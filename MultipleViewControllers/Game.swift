//
//  Game.swift
//  MultipleViewControllers
//
//  Created by Jake Wells on 10/12/16.
//  Copyright © 2016 Joel Hollingsworth. All rights reserved.
//

import Foundation

class Game{
    var playerCount = 0
    var players: [Player] = []
    
    init(){
        
    }

    func addPlayer(_ player:Player){
        print("adding player")
        players.append(player)
        playerCount += 1
    }
}

class Player{
    
    var game = Game()
    
    var name: String
    var score = 0
    
    init(_ name:String){
        print("Making Player")
        self.name = name
    }
}
