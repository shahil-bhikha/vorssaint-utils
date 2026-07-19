// SPDX-License-Identifier: GPL-3.0-or-later
// Copyright (C) 2026 Vorssaint

import Foundation

struct KeepAwakeAutomationStrings {
    let automationSection: String
    let automationCaption: String
    let automationOff: String
    let externalDisplayToggle: String
    let externalDisplayActive: String
    let powerToggle: String
    let powerActive: String
    let automationActive: String

    func activeStatus(for conditions: Set<KeepAwakeAutomationCondition>) -> String {
        if conditions == [.externalDisplay] { return externalDisplayActive }
        if conditions == [.power] { return powerActive }
        return automationActive
    }
}

extension FeatureStrings {
    static func keepAwakeAutomation(_ language: AppLanguage) -> KeepAwakeAutomationStrings {
        return .enUS
    }
}

extension KeepAwakeAutomationStrings {
    static let enUS = KeepAwakeAutomationStrings(
        automationSection: "Automation",
        automationCaption: "Starts when any selected condition is active.",
        automationOff: "Off",
        externalDisplayToggle: "External display",
        externalDisplayActive: "Active while an external display is connected",
        powerToggle: "Power",
        powerActive: "Active while connected to power",
        automationActive: "Active because an automatic condition is met"
    )

}
