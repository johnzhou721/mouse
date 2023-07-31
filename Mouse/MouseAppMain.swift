//
//  MouseAppMain.swift
//  Mouse
//
//  Created by John Zhou on 7/29/23.
//

import Cocoa

@main
class MouseAppMain: NSObject, NSApplicationDelegate {


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }

    @IBAction func fourholes(_ sender: Any?)
    {
        if let mainWindow = NSApplication.shared.windows.first(where: { $0.isMainWindow })
        {
            if let VC = (mainWindow.contentViewController) as? SelectVC
            {
                VC.Hole4!.performClick(nil)
            }
        }
    }
    @IBAction func fiveholes(_ sender: Any?)
    {
        if let mainWindow = NSApplication.shared.windows.first(where: { $0.isMainWindow })
        {
            if let VC = (mainWindow.contentViewController) as? SelectVC
            {
                VC.Hole5!.performClick(nil)
            }
        }
    }
    @IBAction func sixholes(_ sender: Any?)
    {
        if let mainWindow = NSApplication.shared.windows.first(where: { $0.isMainWindow })
        {
            if let VC = (mainWindow.contentViewController) as? SelectVC
            {
                VC.Hole6!.performClick(nil)
            }
        }
    }
}

