//
//  SecondViewController.swift
//  RPS
//
//  Created by KK Charli on 2/18/18.
//  Copyright © 2018 Charli. All rights reserved.
//

import UIKit

class Player1ViewController: UIViewController {

    @IBOutlet weak var msgLBL: UILabel!
    var modelObj: RPS = RPS()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if modelObj.player1Choice == .None {
            msgLBL.text = "Make a selection."
            print("testing")
        } else {
            msgLBL.text = "Selection made: \(modelObj.player1Choice) \nchange if you want."
            print("test2")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func rockBT(_ sender: UIButton) {
        modelObj.player1Choice = .Rock
        msgLBL.text = "Selection made: \(modelObj.player1Choice) \nchange if you want."
    }    
    
    @IBAction func paperBT(_ sender: UIButton) {
        modelObj.player1Choice = .Paper
        msgLBL.text = "Selection made: \(modelObj.player1Choice) \nchange if you want."
    }
    
    @IBAction func scissorBT(_ sender: UIButton) {
        modelObj.player1Choice = .Scissor
        msgLBL.text = "Selection made: \(modelObj.player1Choice) \nchange if you want."
    }
    
}

