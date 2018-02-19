//
//  Model.swift
//  RPS
//
//  Created by Kalburgi Srinivas,Kishan on 2/18/18.
//  Copyright © 2018 Charli. All rights reserved.
//

import Foundation

enum Choice {
    case None, Rock, Paper, Scissor
}

class RPS {
    var player1Choice: Choice
    var player2Choice: Choice
    
    init() {
        self.player1Choice = .None
        self.player2Choice = .None
    }
    
    
}
