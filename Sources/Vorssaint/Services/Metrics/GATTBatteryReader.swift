// SPDX-License-Identifier: GPL-3.0-or-later
// Copyright (C) 2026 Vorssaint

import CoreBluetooth
import Foundation

/// Reads battery level from BLE peripherals via the standard GATT Battery
/// Service (0x180F), for third-party accessories (e.g. non-Apple mice and
/// keyboards) that macOS's IOKit HID properties and `system_profiler` don't
/// surface a battery level for.
final class GATTBatteryReader: NSObject {
    private static let batteryServiceUUID = CBUUID(string: "180F")
    private static let batteryCharacteristicUUID = CBUUID(string: "2A19")
    private static let timeout: TimeInterval = 6

    private var central: CBCentralManager?
    private var completion: (([PeripheralBatteryDevice]) -> Void)?
    private var pending: Set<UUID> = []
    private var results: [UUID: PeripheralBatteryDevice] = [:]
    // Retained so CoreBluetooth doesn't auto-cancel the connection (it drops
    // peripherals with no other strong reference — "API MISUSE" in Console).
    private var connectingPeripherals: [UUID: CBPeripheral] = [:]
    private let queue: DispatchQueue

    init(queue: DispatchQueue) {
        self.queue = queue
    }

    /// Calls `completion` once, on `queue`, after `timeout` at the latest.
    func read(completion: @escaping ([PeripheralBatteryDevice]) -> Void) {
        self.completion = completion
        central = CBCentralManager(delegate: self, queue: queue)
        queue.asyncAfter(deadline: .now() + Self.timeout) { [weak self] in
            self?.finish()
        }
    }

    private func finish() {
        guard let completion else { return }
        self.completion = nil
        central?.stopScan()
        central = nil
        connectingPeripherals.removeAll()
        completion(Array(results.values))
    }
}

extension GATTBatteryReader: CBCentralManagerDelegate {
    func centralManagerDidUpdateState(_ manager: CBCentralManager) {
        guard manager.state == .poweredOn else {
            if manager.state != .unknown && manager.state != .resetting {
                finish()
            }
            return
        }
        // retrieveConnectedPeripherals' cache can be briefly stale right after
        // a fresh CBCentralManager reaches .poweredOn, so retry a few times.
        attemptRetrieve(manager: manager, attemptsLeft: 3)
    }

    private func attemptRetrieve(manager: CBCentralManager, attemptsLeft: Int) {
        let peripherals = manager.retrieveConnectedPeripherals(withServices: [Self.batteryServiceUUID])
        guard !peripherals.isEmpty else {
            if attemptsLeft > 0 {
                queue.asyncAfter(deadline: .now() + 0.75) { [weak self] in
                    self?.attemptRetrieve(manager: manager, attemptsLeft: attemptsLeft - 1)
                }
            } else {
                finish()
            }
            return
        }
        pending = Set(peripherals.map { $0.identifier })
        for peripheral in peripherals {
            connectingPeripherals[peripheral.identifier] = peripheral
            peripheral.delegate = self
            if peripheral.state == .connected {
                peripheral.discoverServices([Self.batteryServiceUUID])
            } else {
                manager.connect(peripheral, options: nil)
            }
        }
    }

    func centralManager(_ manager: CBCentralManager, didConnect peripheral: CBPeripheral) {
        peripheral.discoverServices([Self.batteryServiceUUID])
    }

    func centralManager(_ manager: CBCentralManager, didFailToConnect peripheral: CBPeripheral, error: Error?) {
        pending.remove(peripheral.identifier)
        if pending.isEmpty { finish() }
    }
}

extension GATTBatteryReader: CBPeripheralDelegate {
    func peripheral(_ peripheral: CBPeripheral, didDiscoverServices error: Error?) {
        guard error == nil, let service = peripheral.services?.first(where: { $0.uuid == Self.batteryServiceUUID }) else {
            pending.remove(peripheral.identifier)
            if pending.isEmpty { finish() }
            return
        }
        peripheral.discoverCharacteristics([Self.batteryCharacteristicUUID], for: service)
    }

    func peripheral(_ peripheral: CBPeripheral, didDiscoverCharacteristicsFor service: CBService, error: Error?) {
        guard error == nil,
              let characteristic = service.characteristics?.first(where: { $0.uuid == Self.batteryCharacteristicUUID }) else {
            pending.remove(peripheral.identifier)
            if pending.isEmpty { finish() }
            return
        }
        peripheral.readValue(for: characteristic)
    }

    func peripheral(_ peripheral: CBPeripheral, didUpdateValueFor characteristic: CBCharacteristic, error: Error?) {
        defer {
            pending.remove(peripheral.identifier)
            if pending.isEmpty { finish() }
        }
        guard error == nil, let byte = characteristic.value?.first else { return }
        let name = peripheral.name ?? "Bluetooth Device"
        let kind = PeripheralBatterySupport.kind(product: name, primaryUsagePage: nil, primaryUsage: nil, usagePairs: [])
        results[peripheral.identifier] = PeripheralBatteryDevice(
            id: "ble:\(peripheral.identifier.uuidString)",
            name: name,
            percent: Int(byte),
            kind: kind
        )
    }
}
