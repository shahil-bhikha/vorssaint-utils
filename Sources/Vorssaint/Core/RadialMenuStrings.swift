// SPDX-License-Identifier: GPL-3.0-or-later
// Copyright (C) 2026 Vorssaint

import Foundation

struct RadialMenuFeatureStrings {
    let pageTitle: String
    let hubDescription: String
    let enableLabel: String
    let enableCaption: String
    let positionLabel: String
    let positionPointer: String
    let positionCenter: String
    let tryButton: String
    let actionsHeader: String
    let addButton: String
    let limitCaption: String
    let emptyCaption: String
    let backButton: String
    let editActionsButton: String
    let nameLabel: String
    let automaticLabel: String
    let iconLabel: String
    let actionLabel: String
    let kindApp: String
    let kindFile: String
    let kindURL: String
    let kindShortcut: String
    let kindTool: String
    let kindMedia: String
    let kindSubmenu: String
    let chooseButton: String
    let urlPlaceholder: String
    let urlInvalid: String
    let toolLabel: String
    let mediaLabel: String
    let mediaPlayPause: String
    let mediaPrevious: String
    let mediaNext: String
    let submenuCaption: String
    let saveButton: String
    let deleteButton: String
    let permissionCaption: String
    let manageButton: String
    let panelCaption: String
    let mouseTriggerLabel: String
    let mouseTriggerOff: String
    let mouseTriggerBack: String
    let mouseTriggerForward: String
    let mouseTriggerWarning: String
}

extension FeatureStrings {
    static func radialMenu(_ language: AppLanguage) -> RadialMenuFeatureStrings {
        return .enUS
    }
}

extension RadialMenuFeatureStrings {
    static let enUS = RadialMenuFeatureStrings(
        pageTitle: "Radial menu",
        hubDescription: "Opens a wheel of your favorite actions around the pointer",
        enableLabel: "Use the radial menu",
        enableCaption: "Hold the shortcut, point at an action and release. A quick press keeps the wheel open.",
        positionLabel: "Opens",
        positionPointer: "At the pointer",
        positionCenter: "At the screen center",
        tryButton: "Try it",
        actionsHeader: "Actions",
        addButton: "Add action",
        limitCaption: "A wheel holds up to 12 actions.",
        emptyCaption: "No actions here yet.",
        backButton: "Back",
        editActionsButton: "Edit actions",
        nameLabel: "Name",
        automaticLabel: "Automatic",
        iconLabel: "Icon",
        actionLabel: "Action",
        kindApp: "Open an app",
        kindFile: "Open a file or folder",
        kindURL: "Open a link",
        kindShortcut: "Press a shortcut",
        kindTool: "Vorssaint tool",
        kindMedia: "Media control",
        kindSubmenu: "Submenu",
        chooseButton: "Choose…",
        urlPlaceholder: "example.com",
        urlInvalid: "Enter a valid link.",
        toolLabel: "Tool",
        mediaLabel: "Control",
        mediaPlayPause: "Play or pause",
        mediaPrevious: "Previous track",
        mediaNext: "Next track",
        submenuCaption: "Opens a second wheel with its own actions.",
        saveButton: "Save",
        deleteButton: "Remove",
        permissionCaption: "Key actions and the side mouse button trigger need the Accessibility permission.",
        manageButton: "Manage the menu",
        panelCaption: "Your favorite actions on a wheel",
        mouseTriggerLabel: "Mouse button",
        mouseTriggerOff: "Off",
        mouseTriggerBack: "Back side button",
        mouseTriggerForward: "Forward side button",
        mouseTriggerWarning: "While this is on, that button no longer goes back or forward in apps. If you navigate with it, leave this off."
    )

}
