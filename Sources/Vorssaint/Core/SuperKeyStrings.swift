// SPDX-License-Identifier: GPL-3.0-or-later
// Copyright (C) 2026 Vorssaint

import Foundation

struct SuperKeyStrings {
    let pageTitle: String
    let hubDescription: String
    let enableToggle: String
    let enableCaption: String
    let capsLockKey: String
    let holdHint: String
    let soloSection: String
    let soloCaption: String
    let soloNothing: String
    let soloCapsLock: String
    let soloEscape: String
    let activeNow: String
    let panelCaption: String
    let manageButton: String
}

extension FeatureStrings {
    static func superKey(_ language: AppLanguage) -> SuperKeyStrings {
        return .enUS
    }
}

extension SuperKeyStrings {
    static let enUS = SuperKeyStrings(
        pageTitle: "Super key",
        hubDescription: "Holds Shift, Control, Option and Command while you hold Caps Lock.",
        enableToggle: "Use Caps Lock as the super key",
        enableCaption: "Hold it and press any key. The four modifier keys go along, so your shortcuts stay out of every other app's way.",
        capsLockKey: "Caps Lock",
        holdHint: "Hold",
        soloSection: "A tap on its own",
        soloCaption: "What a quick tap does when no other key is pressed.",
        soloNothing: "Nothing",
        soloCapsLock: "Turn capitals on and off",
        soloEscape: "Press Escape",
        activeNow: "Working now",
        panelCaption: "Caps Lock holds Shift, Control, Option and Command.",
        manageButton: "Set up…"
    )

}
