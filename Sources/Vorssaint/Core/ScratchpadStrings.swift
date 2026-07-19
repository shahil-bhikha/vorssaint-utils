// SPDX-License-Identifier: GPL-3.0-or-later
// Copyright (C) 2026 Vorssaint

import Foundation

/// Localized strings for the scratchpad, the floating pad for short-lived text.
struct ScratchpadFeatureStrings {
    let pageTitle: String
    let hubDescription: String
    let panelCaption: String
    let openButton: String
    let placeholder: String
    let copyAll: String
    let copied: String
    let exportAction: String
    let clearAction: String
    let retentionTitle: String
    let retentionNever: String
    let retentionDay: String
    let retentionWeek: String
    let retentionMonth: String
    let retentionCaption: String
}

extension FeatureStrings {
    static func scratchpad(_ language: AppLanguage) -> ScratchpadFeatureStrings {
        return .enUS
    }
}

extension ScratchpadFeatureStrings {
    static let enUS = ScratchpadFeatureStrings(
        pageTitle: "Scratchpad",
        hubDescription: "A floating pad for short-lived notes",
        panelCaption: "Quick notes that save themselves",
        openButton: "Open scratchpad",
        placeholder: "Type anything. It saves by itself.",
        copyAll: "Copy all",
        copied: "Copied",
        exportAction: "Save as file",
        clearAction: "Clear",
        retentionTitle: "Clear on its own",
        retentionNever: "Never",
        retentionDay: "After a day unused",
        retentionWeek: "After a week unused",
        retentionMonth: "After a month unused",
        retentionCaption: "The pad empties itself once the text goes that long without edits."
    )

}
