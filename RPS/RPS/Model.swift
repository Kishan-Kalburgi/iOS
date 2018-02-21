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
    private var _player1Choice: Choice
    private var _player2Choice: Choice
    private var _player1Counter: Int
    private var _player2Counter: Int
    private var _player1Name: String
    private var _player2Name: String
    
    var player1Choice: Choice {
        get{
            return _player1Choice
        }
        set {
            _player1Choice = newValue
        }
    }
    
    var player2Choice: Choice {
        get{
            return _player2Choice
        }
        set {
            _player2Choice = newValue
        }
    }
    
    var player1Counter: Int {
        get{
            return _player1Counter
        }
        set {
            _player1Counter = newValue
        }
    }
    
    var player2Counter: Int {
        get{
            return _player2Counter
        }
        set {
            _player2Counter = newValue
        }
    }
    
    var player1Name: String {
        get{
            return _player1Name
        }
        set {
            _player1Name = newValue
        }
    }
    
    var player2Name: String {
        get{
            return _player2Name
        }
        set {
             _player2Name = newValue
        }
    }
    
    init() {
        self._player1Choice = .None
        self._player2Choice = .None
        self._player1Counter = 0
        self._player2Counter = 0
        self._player1Name = "Player 1"
        self._player2Name = "Player 2"
    }
    
    func reset() {
        self.player1Choice = .None
        self.player2Choice = .None
        self.player1Counter = 0
        self.player2Counter = 0
        player1Name = "Player 1"
        player2Name = "Player 2"
    }
    
    func haveResult() -> Bool {
        if player1Choice != .None && player2Choice != .None {
            return true
        } else {
            return false
        }
    }
    
    func winner() -> String {
        var res: String = ""
        if(player1Choice == player2Choice) {
            res = "Its a Tie"
        } else {
            if player1Choice == .Rock {
                if player2Choice == .Paper {
                    res = "Player 2 wins"
                    player2Counter += 1
                } else {
                    res = "Player 1 wins"
                    player1Counter += 1
                }
            } else if player1Choice == .Scissor {
                if player2Choice == .Rock {
                    res = "Player 2 wins"
                    player2Counter += 1
                } else {
                    res = "Player 1 wins"
                    player1Counter += 1
                }
            } else if player1Choice == .Paper {
                if player2Choice == .Scissor {
                    res = "Player 2 wins"
                    player2Counter += 1
                } else {
                    res = "Player 1 wins"
                    player1Counter += 1
                }
            }
        }
        return res
    }
    
    func choosePlayer1(pick:Choice){
        player1Choice = pick
    }
    
    func choosePlayer2(pick:Choice){
        player2Choice = pick
    }
}
