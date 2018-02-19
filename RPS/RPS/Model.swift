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
    
    func reset() {
        self.player1Choice = .None
        self.player2Choice = .None
        
    }
    
    func haveResult() -> Bool {
        if player1Choice != .None && player2Choice != .None {
            return true
        } else {
            return false
        }
    }
    
    func winner() -> String {
        if(player1Choice == player2Choice) {
            return "Its a Tie"
        } else {
            if player1Choice == .Rock {
                if player2Choice == .Paper {
                    return "Player 2 wins"
                } else {
                    return "Player 1 wins"
                }
            } else if player1Choice == .Scissor {
                if player2Choice == .Rock {
                    return "Player 2 wins"
                } else {
                    return "Player 1 wins"
                }
            } else if player1Choice == .Paper {
                if player2Choice == .Scissor {
                    return "Player 2 wins"
                } else {
                    return "Player 1 wins"
                }
            }
        }
        return ""
    }
    
    func choosePlayer1(pick:Choice){
        player1Choice = pick
    }
    
    func choosePlayer2(pick:Choice){
        player2Choice = pick
    }
}
