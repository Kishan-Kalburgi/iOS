//
//  FirstViewController.swift
//  RPS
//
//  Created by KK Charli on 2/18/18.
//  Copyright © 2018 Charli. All rights reserved.
//

import UIKit

class Player2ViewController: UIViewController {
    
    @IBOutlet weak var msgLBL: UILabel!
    var modelObj: RPS = RPS()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if modelObj.player2Choice == .None {
            msgLBL.text = "Make a selection."
        } else {
            msgLBL.text = "Selection made: \(modelObj.player1Choice) \nchange if you want."
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rockBT(_ sender: UIButton) {
         modelObj.player2Choice = .Rock
         msgLBL.text = "Selection made: \(modelObj.player2Choice) \nchange if you want."
    }
    
    @IBAction func paperBT(_ sender: UIButton) {
        modelObj.player2Choice = .Paper
        msgLBL.text = "Selection made: \(modelObj.player2Choice) \nchange if you want."
    }
    
    @IBAction func scissorBT(_ sender: UIButton) {
        modelObj.player2Choice = .Scissor
        msgLBL.text = "Selection made: \(modelObj.player2Choice) \nchange if you want."
    }
    
}

