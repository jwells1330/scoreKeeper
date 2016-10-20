//
//  ViewController.swift
//  MultipleViewControllers
//
//  Created by Joel Hollingsworth on 10/11/16.
//  Copyright © 2016 Joel Hollingsworth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerCountLabel: UILabel!
    @IBOutlet weak var playerNameTextField: UITextField!
    @IBOutlet weak var gameStart: UIButton!
    
    let game = Game()

    func addPlayerButton(_ sender: UIButton) {
        gameStart.setTitle("Start Game", for: UIControlState.normal)
        if game.playerCount == 5 {
            
        }else{
            let playerName = playerNameTextField.text
            print(playerNameTextField.text)
            game.addPlayer(Player(playerName!))
            playerCountLabel.text = "PlayerCount = \(game.playerCount)"
            playerNameTextField.text = ""
            playerNameTextField.placeholder = "Enter Name for Player \(game.playerCount+1)"
            if game.playerCount == 5{
                sender.alpha = 1
                playerNameTextField.text = "5 Players is the Maximum"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        playerNameTextField.placeholder = "Enter Name for Player \(game.playerCount+1)"
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSecondViewController"{
            let secondViewController = segue.destination as! SecondViewController
                secondViewController.game = self.game
        }
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "showSecondViewController" && game.playerCount>0{
            return true
        }else{
            gameStart.setTitle("Please Enter at Least 1 Player", for: UIControlState.normal)
            return false
        }
    }
}

