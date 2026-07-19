// SPDX-License-Identifier: GPL-3.0-or-later
// Copyright (C) 2026 Vorssaint

import Foundation

/// Strings for the text snippets feature. Same contract as the other
/// FeatureStrings structs: memberwise init in declaration order, one static
/// per language, all in this file.
struct SnippetFeatureStrings {
    let pageTitle: String
    let hubDescription: String
    let enable: String
    let enableCaption: String
    let addButton: String
    let newTitle: String
    let editTitle: String
    let nameLabel: String
    let namePlaceholder: String
    let triggerLabel: String
    let triggerPlaceholder: String
    let replacementLabel: String
    let replacementPlaceholder: String
    let expansionLabel: String
    let expansionImmediate: String
    let expansionDelimiter: String
    let variablesHint: String
    let variablesCaption: String
    let emptyList: String
    let duplicateTrigger: String
    let triggerTooShort: String
    let deleteButton: String
    let saveButton: String
    let manageButton: String
}

extension FeatureStrings {
    static func snippets(_ language: AppLanguage) -> SnippetFeatureStrings {
        return .enUS
    }
}

extension SnippetFeatureStrings {
}

extension SnippetFeatureStrings {
    static let enUS = SnippetFeatureStrings(
        pageTitle: "Text snippets",
        hubDescription: "Short triggers expand into full text",
        enable: "Expand snippets while typing",
        enableCaption: "Type a trigger anywhere and it becomes its text. Everything stays on this Mac.",
        addButton: "Add snippet",
        newTitle: "New snippet",
        editTitle: "Edit snippet",
        nameLabel: "Name",
        namePlaceholder: "Personal email",
        triggerLabel: "Trigger",
        triggerPlaceholder: ";email",
        replacementLabel: "Text",
        replacementPlaceholder: "myemail@example.com",
        expansionLabel: "Expand",
        expansionImmediate: "Right away",
        expansionDelimiter: "After space, Tab or Return",
        variablesHint: "Variables: {{date}}, {{time}}, {{datetime}}, {{clipboard}}",
        variablesCaption: "They become the date, the time and the copied text at the moment of expansion.",
        emptyList: "No snippets yet. Add the first one.",
        duplicateTrigger: "Another snippet already uses this trigger.",
        triggerTooShort: "The trigger needs at least 2 characters.",
        deleteButton: "Delete",
        saveButton: "Save",
        manageButton: "Manage snippets"
    )

}
