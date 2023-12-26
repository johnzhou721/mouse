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
        guard let newViewController = storyboard?.instantiateController(withIdentifier: NSStoryboard.SceneIdentifier("GameVC5")) as? GameVC5 else {
                fatalError("Unable to instantiate GameVC5")
            }

            // Additional configuration, if needed

            // Present the new view controller
        presentAsSheet(newViewController)
    }
}
