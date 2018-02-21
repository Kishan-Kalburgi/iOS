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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if AppDelegate.modelObj.player2Choice == .None {
            msgLBL.text = "Make a selection"
        } else {
            msgLBL.text = "Selection made: \(AppDelegate.modelObj.player1Choice)"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if AppDelegate.modelObj.player2Choice == .None {
            msgLBL.text = "Make a selection."
        } else {
            msgLBL.text = "Selection made: \(AppDelegate.modelObj.player2Choice)"
        }
        self.title = AppDelegate.modelObj.player2Name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rockBT(_ sender: UIButton) {
        if AppDelegate.modelObj.player2Choice == .None {
         AppDelegate.modelObj.choosePlayer2(pick: .Rock)
         msgLBL.text = "Selection made: \(AppDelegate.modelObj.player2Choice)"
         
        } else {
            msgLBL.text = "You can make selection only 1 time!!!\nYour Selection is \(AppDelegate.modelObj.player2Choice)"
            msgLBL.textColor = UIColor.red
        }
    }
    
    @IBAction func paperBT(_ sender: UIButton) {
        if AppDelegate.modelObj.player2Choice == .None {
        AppDelegate.modelObj.choosePlayer2(pick: .Paper)
        msgLBL.text = "Selection made: \(AppDelegate.modelObj.player2Choice)"
        } else {
            msgLBL.text = "You can make selection only 1 time!!!\nYour Selection is \(AppDelegate.modelObj.player2Choice)"
            msgLBL.textColor = UIColor.red
        }
    }
    
    @IBAction func scissorBT(_ sender: UIButton) {
        if AppDelegate.modelObj.player2Choice == .None {
        AppDelegate.modelObj.choosePlayer2(pick: .Scissor)
        msgLBL.text = "Selection made: \(AppDelegate.modelObj.player2Choice)"
        } else {
            msgLBL.text = "You can make selection only 1 time!!!\nYour Selection is \(AppDelegate.modelObj.player2Choice)"
            msgLBL.textColor = UIColor.red
        }
    }
    
}

