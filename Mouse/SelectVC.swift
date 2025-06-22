//
//  SelectVC.swift
//  Mouse
//
//  Created by John Zhou on 7/30/23.
//

import Cocoa

class SelectVC: NSViewController {
    @IBOutlet public var Hole4 : NSButton!
    @IBOutlet public var Hole5 : NSButton!
    @IBOutlet public var Hole6 : NSButton!
    @IBAction public func ran(_: NSButton)
    {
        random = true
        let newViewController = storyboard!.instantiateController(withIdentifier: NSStoryboard.SceneIdentifier("GameVC5")) as! GameVC5
        let newWindow = NSWindow(contentViewController: newViewController)
        newWindow.title = "New Window"
        newWindow.styleMask = [.titled, .closable, .resizable, .fullSizeContentView]
        newWindow.isReleasedWhenClosed = false // Keep window in memory even when closed

        // Show the new window
        newWindow.makeKeyAndOrderFront(self)
        
        // Close the current window (optional)
        self.view.window?.close()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        Hole4.target = self
        Hole4.action = #selector(buttonClicked)
        Hole5.target = self
        Hole5.action = #selector(buttonClicked)
        Hole6.target = self
        Hole6.action = #selector(buttonClicked)
    }
    @objc private func buttonClicked(butt: NSButton)
    {
        
        let a = [storyboard!.instantiateController(withIdentifier: "GameVC4") as! NSViewController, storyboard!.instantiateController(withIdentifier: "GameVC5") as! NSViewController, storyboard!.instantiateController(withIdentifier: "GameVC6") as! NSViewController]
        
        var newWindow: NSWindow! = nil
        if butt == Hole4 {
            newWindow = NSWindow(contentViewController: a[0])
        } else if butt == Hole5 {
            newWindow = NSWindow(contentViewController: a[1])
        } else if butt == Hole6 {
            newWindow = NSWindow(contentViewController: a[2])
        }
        
        // Set window properties (optional)
        newWindow.title = "Game In Progress"
        newWindow.styleMask = [.titled, .closable, .resizable, .fullSizeContentView]
        newWindow.isReleasedWhenClosed = false // Keep window in memory even when closed

        // Show the new window
        newWindow.makeKeyAndOrderFront(self)
        
        self.view.window?.close()
    }
}
