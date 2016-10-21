//
//  Game.swift
//  KigiScoringApp
//
//
//  By Jacob Wells and Evan Ashwell
//

import Foundation

class Game{
    var playerCount = 0
    var players: [Player] = []
    
    init(){
        
    }

    func addPlayer(_ player:Player){
        players.append(player)
        playerCount += 1
    }
}

class Player{
    
    var name: String
    var score = 0
    
    init(_ name:String){
        self.name = name
    }
}
