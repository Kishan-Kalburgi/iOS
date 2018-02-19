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

    override func viewWillAppear(_ animated: Bool) {
        if AppDelegate.modelObj.haveResult() == true {
            resLBL.text = AppDelegate.modelObj.winner()
        }
    }
    @IBAction func rssetBT(_ sender: UIButton) {
        AppDelegate.modelObj.reset()
        resLBL.text = "Make your selection on the other tabs"
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
