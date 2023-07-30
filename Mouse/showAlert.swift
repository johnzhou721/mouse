//
//  showAlert.swift
//  Mouse
//
//  Created by John Zhou on 7/29/23.
//

import Cocoa

/// Style can be informational.
func showAlert(title: String, message: String, style: NSAlert.Style) {
    let alert = NSAlert()
    alert.messageText = title
    alert.informativeText = message
    alert.alertStyle = style
    alert.addButton(withTitle: "OK")
    alert.runModal()
}
