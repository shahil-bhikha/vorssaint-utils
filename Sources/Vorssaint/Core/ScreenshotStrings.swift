// SPDX-License-Identifier: GPL-3.0-or-later
// Copyright (C) 2026 Vorssaint

import Foundation

/// Localized strings for the screenshot tool.
struct ScreenshotFeatureStrings {
    let pageTitle: String
    let hubDescription: String
    let captureButton: String
    let panelCaption: String
    let fileNamePrefix: String
    let hintDrag: String
    let hintClick: String
    let hintFullScreen: String
    let hintCancel: String
    let hintRepeat: String
    let freezeToggle: String
    let freezeCaption: String
    let folderLabel: String
    let folderChoose: String
    let subfolderLabel: String
    let subfolderCaption: String
    let fileNamePatternLabel: String
    let fileNamePatternCaption: String
    let fileNumberStartLabel: String
    let fileNumberResetButton: String
    let fileNumberNextFormat: String
    let delayLabel: String
    let delayOff: String
    let delaySecondsFormat: String
    let pointerToggle: String
    let downscaleToggle: String
    let downscaleCaption: String
    let editorTitle: String
    let toolShortcutsTitle: String
    let toolShortcutsToggle: String
    let toolShortcutsCaption: String
    let toolSelect: String
    let toolArrow: String
    let toolLine: String
    let toolRect: String
    let toolEllipse: String
    let toolFreehand: String
    let toolHighlight: String
    let toolText: String
    let toolSticker: String
    let toolCounter: String
    let toolPixelate: String
    let toolRedact: String
    let toolCrop: String
    let textPlaceholder: String
    let cropApply: String
    let cancel: String
    let colorLabel: String
    let strokeLabel: String
    let shadowLabel: String
    let backdropLabel: String
    let backdropNone: String
    let editButton: String
    let copyButton: String
    let saveButton: String
    let saveAsButton: String
    let pinButton: String
    let copyTextButton: String
    let discardTitle: String
    let discardMessage: String
    let discardConfirm: String
    let copiedHUD: String
    let savedHUDFormat: String
    let savedAndCopiedHUDFormat: String
    let defaultActionLabel: String
    let defaultActionCaption: String
    let defaultActionNone: String
    let defaultActionSaveAndCopy: String
    let captureFailed: String
    let pinOpacity: String
    let pinClickThrough: String
    let pinCloseAll: String
    let backdropPaddingLabel: String
    let backdropWallpaperLabel: String
    let backdropImageButton: String
    let backdropSolidLabel: String
    let backdropGradientLabel: String
    let backdropCornersLabel: String
    let backdropSavePreset: String
    let backdropDeletePreset: String
    let backdropCustomLabel: String
    let openEditorToggle: String
    let openEditorCaption: String
    let autoCopyToggle: String
    let autoCopyCaption: String
    let hintLoupe: String
    let lastRegionToggle: String
}

extension FeatureStrings {
    static func screenshot(_ language: AppLanguage) -> ScreenshotFeatureStrings {
        return .enUS
    }
}

extension ScreenshotFeatureStrings {
    static let enUS = ScreenshotFeatureStrings(
        pageTitle: "Screenshot",
        hubDescription: "Captures an area, window or screen and annotates it",
        captureButton: "Capture now",
        panelCaption: "Capture an area, window or the whole screen",
        fileNamePrefix: "Screenshot",
        hintDrag: "Drag to select an area",
        hintClick: "Click a window to capture it",
        hintFullScreen: "Return captures the whole screen",
        hintCancel: "Esc cancels",
        hintRepeat: "R repeats the last area",
        freezeToggle: "Freeze the screen while selecting",
        freezeCaption: "The picture stops while you choose the area, so nothing moves away or changes during the selection.",
        folderLabel: "Save to",
        folderChoose: "Choose…",
        subfolderLabel: "Subfolder pattern",
        subfolderCaption: "Optional. Creates dated subfolders inside the folder above using %y, %year, %mo, %month, %d, %h, %mi and %s, for example %y-%mo for 24-03.",
        fileNamePatternLabel: "File name",
        fileNamePatternCaption: "Optional. Overrides the default name using the same %y, %year, %mo, %month, %d, %h, %mi and %s tokens, plus %# for an auto-incrementing number (%## pads to 2 digits, %### to 3, and so on).",
        fileNumberStartLabel: "Starts at",
        fileNumberResetButton: "Reset",
        fileNumberNextFormat: "Next: %d",
        delayLabel: "Delay",
        delayOff: "Off",
        delaySecondsFormat: "%d s",
        pointerToggle: "Include the pointer",
        downscaleToggle: "Save at 1x size",
        downscaleCaption: "Retina captures are saved at half their pixel size, which makes smaller files.",
        editorTitle: "Screenshot",
        toolShortcutsTitle: "Editor tools",
        toolShortcutsToggle: "Use number shortcuts",
        toolShortcutsCaption: "Use the arrows or choose a number. The first nine tools use 1 to 9. The others have no shortcut.",
        toolSelect: "Select",
        toolArrow: "Arrow",
        toolLine: "Line",
        toolRect: "Rectangle",
        toolEllipse: "Ellipse",
        toolFreehand: "Pen",
        toolHighlight: "Highlighter",
        toolText: "Text",
        toolSticker: "Sticker",
        toolCounter: "Number",
        toolPixelate: "Pixelate",
        toolRedact: "Solid block",
        toolCrop: "Crop",
        textPlaceholder: "Text",
        cropApply: "Crop",
        cancel: "Cancel",
        colorLabel: "Color",
        strokeLabel: "Thickness",
        shadowLabel: "Shadows",
        backdropLabel: "Background",
        backdropNone: "None",
        editButton: "Edit",
        copyButton: "Copy",
        saveButton: "Save",
        saveAsButton: "Save As…",
        pinButton: "Pin to screen",
        copyTextButton: "Copy text",
        discardTitle: "Discard this screenshot?",
        discardMessage: "It was not copied or saved yet.",
        discardConfirm: "Discard",
        copiedHUD: "Screenshot copied",
        savedHUDFormat: "Saved to %@",
        savedAndCopiedHUDFormat: "Saved to %@ and copied",
        defaultActionLabel: "Default action",
        defaultActionCaption: "Runs automatically right after capture. The confirmation still appears, so you can Edit or discard afterward.",
        defaultActionNone: "Ask each time",
        defaultActionSaveAndCopy: "Save & Copy",
        captureFailed: "The screen could not be captured",
        pinOpacity: "Opacity",
        pinClickThrough: "Ignore clicks",
        pinCloseAll: "Close all pins",
        backdropPaddingLabel: "Margin",
        backdropWallpaperLabel: "Wallpaper",
        backdropImageButton: "Image…",
        backdropSolidLabel: "Solid",
        backdropGradientLabel: "Gradient",
        backdropCornersLabel: "Corners",
        backdropSavePreset: "Save background",
        backdropDeletePreset: "Remove",
        backdropCustomLabel: "Custom",
        openEditorToggle: "Open the editor right after capturing",
        openEditorCaption: "The capture skips the floating preview and opens ready to annotate.",
        autoCopyToggle: "Copy to the clipboard automatically",
        autoCopyCaption: "Every capture goes to the clipboard as soon as it is taken, ready to paste. Saving a file stays a separate choice.",
        hintLoupe: "Z toggles the loupe",
        lastRegionToggle: "Show the last capture outline"
    )

}
