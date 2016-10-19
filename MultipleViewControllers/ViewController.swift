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
    
    let game = Game()

    func addPlayerButton(_ sender: UIButton) {
        if game.playerCount == 5 {
            
        }else{
            
            let playerName = playerNameTextField.text
            print(playerNameTextField.text)
            game.addPlayer(Player(playerName!))
            playerCountLabel.text = "PlayerCount = \(game.playerCount)"
            playerNameTextField.text = ""
            playerNameTextField.placeholder = "Enter Name for Player \(game.playerCount+1)"
            if game.playerCount == 5{
                sender.alpha = 0.5
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
        if segue.identifier == "showSecondViewController" {
            let secondViewController = segue.destination as! SecondViewController
                secondViewController.game = self.game
        }
    }

    
    
    
}

