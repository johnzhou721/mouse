//
//  gameVCin.swift
//  Mouse
//
//  Created by John Zhou on 7/30/23.
//

import Cocoa

class GameVC4 : gameVC {
    @IBOutlet var Button1: NSButton?
    @IBOutlet var Button2: NSButton?
    @IBOutlet var Button3: NSButton?
    @IBOutlet var Button4: NSButton?
    override func viewDidLoad()
    {
        buttons.append(nil)
        buttons.append(Button1!)
        buttons.append(Button2!)
        buttons.append(Button3!)
        buttons.append(Button4!)
        super.viewDidLoad()
    }
    @IBAction func ButtonHandler(_ sender: NSButton?)
    {
        self.pressedButton(sender!)
    }
}
class GameVC5 : gameVC {
    @IBOutlet var Button1: NSButton?
    @IBOutlet var Button2: NSButton?
    @IBOutlet var Button3: NSButton?
    @IBOutlet var Button4: NSButton?
    @IBOutlet var Button5: NSButton?
    override func viewDidLoad()
    {
        buttons.append(nil)
        buttons.append(Button1!)
        buttons.append(Button2!)
        buttons.append(Button3!)
        buttons.append(Button4!)
        buttons.append(Button5!)
        super.viewDidLoad()
    }
    @IBAction func ButtonHandler(_ sender: NSButton?)
    {
        self.pressedButton(sender!)
    }
}
class GameVC6 : gameVC {
    @IBOutlet var Button1: NSButton?
    @IBOutlet var Button2: NSButton?
    @IBOutlet var Button3: NSButton?
    @IBOutlet var Button4: NSButton?
    @IBOutlet var Button5: NSButton?
    @IBOutlet var Button6: NSButton?
    override func viewDidLoad()
    {
        buttons.append(nil)
        buttons.append(Button1!)
        buttons.append(Button2!)
        buttons.append(Button3!)
        buttons.append(Button4!)
        buttons.append(Button5!)
        buttons.append(Button6!)
        super.viewDidLoad()
    }
    @IBAction func ButtonHandler(_ sender: NSButton?)
    {
        self.pressedButton(sender!)
    }
}
