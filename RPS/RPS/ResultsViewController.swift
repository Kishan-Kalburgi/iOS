//
//  ResultsViewController.swift
//  RPS
//
//  Created by Kalburgi Srinivas,Kishan on 2/18/18.
//  Copyright © 2018 Charli. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    @IBOutlet weak var resLBL: UILabel!
    @IBOutlet weak var p1ScoreLBL: UILabel!
    @IBOutlet weak var p2ScoreLBL: UILabel!
    @IBOutlet weak var scoreLBL: UILabel!
    @IBOutlet weak var p1NameTF: UITextField!
    @IBOutlet weak var p2NameTF: UITextField!
    @IBOutlet weak var p1NameLBL: UILabel!
    @IBOutlet weak var p2NameLBL: UILabel!
    @IBOutlet weak var resp1IMG: UIImageView!
    @IBOutlet weak var resp2IMG: UIImageView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        resp1IMG.isHidden = true
        resp2IMG.isHidden = true
        if AppDelegate.modelObj.haveResult() == true {
            resLBL.text = AppDelegate.modelObj.winner()
            p1ScoreLBL.text = String (AppDelegate.modelObj.player1Counter)
            p2ScoreLBL.text = String (AppDelegate.modelObj.player2Counter)
            AppDelegate.modelObj.choosePlayer1(pick: .None)
            AppDelegate.modelObj.choosePlayer2(pick: .None)
        } else {
            if AppDelegate.modelObj.player1Choice == .None && AppDelegate.modelObj.player2Choice == .None {
                resLBL.text = "Make your selection on the other tabs"
            }else  if AppDelegate.modelObj.player1Choice == .None {
                resLBL.text = "\(AppDelegate.modelObj.player1Name) not made Selection"
                resp1IMG.isHidden = false
            }else  if AppDelegate.modelObj.player2Choice == .None {
                resLBL.text = "\(AppDelegate.modelObj.player2Name) not made selection"
                resp2IMG.isHidden = false
            }
        }
    }
    @IBAction func rssetBT(_ sender: UIButton) {
        AppDelegate.modelObj.reset()
        resLBL.text = "Make your selection on the other tabs"
        p1NameLBL.text = AppDelegate.modelObj.player1Name
        p2NameLBL.text = AppDelegate.modelObj.player2Name
        p1ScoreLBL.text = String (AppDelegate.modelObj.player1Counter)
        p2ScoreLBL.text = String (AppDelegate.modelObj.player2Counter)
        p1NameTF.text = ""
        p2NameTF.text = ""
    }
    
    @IBAction func p1NameBT(_ sender: UIButton) {
        AppDelegate.modelObj.player1Name = p1NameTF.text!
        if AppDelegate.modelObj.player1Name != "" {
        p1NameLBL.text = AppDelegate.modelObj.player1Name
        }
        AppDelegate.modelObj.player2Name = p2NameTF.text!
        if AppDelegate.modelObj.player2Name != "" {
        p2NameLBL.text = AppDelegate.modelObj.player2Name
        }
    }
    
}
