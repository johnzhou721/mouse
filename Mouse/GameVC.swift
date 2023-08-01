//
//  gameVC.swift
//  Mouse
//
//  Created by John Zhou on 7/29/23.
//

import Cocoa
import Dispatch
var q = QueueWrapper()
class gameVC : NSViewController {
    // 5 + 6 + 7 + 7, 5 Rounds, 20 Games, Permutation, 500 pts.
    var cycleLength : [Int] = [5, 5, 5, 5, 5,
                               6, 6, 6, 6, 6,
                               7, 7, 7, 7, 7,
                               7, 7, 7, 7, 7]  // Generated
    var buttons : [NSButton?] = []              // Subclass
    var sequence : [Int] = []                  // Generated
    var currentNum : Int = 0                   // Default
    var score : Int = 0                        // Default
    var gameNum : Int = 0                      // Default
    var debugLabel : NSTextField? = nil        // Subclass
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        cycleLength.shuffle()  // Shuffle the cycle length
        for _ in 1..<cycleLength[gameNum]+1 {
            sequence.append(Int.random(in: 1..<buttons.count))
        }
    }
    func resetGame()
    {
        gameNum += 1
        currentNum = 0
        
        if gameNum == 20 {
            debugLabel?.stringValue = "\(score)"
            showAlert(title: "Game finished for All", message: "Score: \(score)", style: .informational)
            exit(0)
        }
        sequence = []
        for _ in 1..<cycleLength[gameNum]+1 {
            sequence.append(Int.random(in: 1..<buttons.count))
        }
        showAlert(title: "Game finished", message: "Game is done. Click OK for next game.", style: .informational)
        
    }
    func pressedButton(_ sender: NSButton)
    {
        // Determine input.
        var counter = 0
        var input = 0
        for button in buttons
        {
            if button == nil {continue}
            counter += 1
            if sender == button
            {
                input = counter
                break
            }
        }
        buttons[sequence[currentNum % sequence.count]]?.image = NSImage(named: "Number\(sequence[currentNum % sequence.count]) 1")
        // Process it.
        if sequence[currentNum % sequence.count] == input
        {
            // Answer is correct.
            if currentNum >= sequence.count
            {
                score += 1
                debugLabel?.stringValue = "Score +1";
            }
            else
            {
                debugLabel?.stringValue = "Score +0";
            }
        }
        else
        {
            debugLabel?.stringValue = "Incorrect";
        }
        q.enqueue(sequence[currentNum % sequence.count])
        let queue = DispatchQueue.main
        queue.asyncAfter(deadline: .now() + 0.1)
        { [self] in
            let Num = q.front()
            buttons[Num as! Int]?.image = NSImage(named: "Number\(Num!)")
            q.dequeue()
        }
        currentNum += 1
        if currentNum == 5 * sequence.count
        {
            resetGame()
        }
//        print("\(score)\n")
    }
}

