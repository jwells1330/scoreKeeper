//
//  SecondViewController.swift
//  MultipleViewControllers
//
//  Created by Joel Hollingsworth on 10/11/16.
//  Copyright © 2016 Joel Hollingsworth. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {


    @IBOutlet weak var nameStackView: UIStackView!
    @IBOutlet weak var scoreStackView: UIStackView!
    
    var game = Game()
    
    var labels: [UILabel] = []

    var yPos: CGFloat = 0

   /* constant for how much space between each label */
    let spacing: CGFloat = 4

   /* constant for how many labels we're expecting */
    let maxLabels: CGFloat = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        for num in 0...game.playerCount - 1 {
            addNewNameLabel(game.players[num].name)
            addNewScoreLabel(game.players[num].score)
            
        }
    }
 
    func addNewNameLabel(_ name: String){
        
        // how tall is each label
        let labelHeight = nameStackView.frame.height / maxLabels
        
        // create a label
        let label = UILabel(frame: CGRect(x: 0, y: yPos, width: nameStackView.frame.width, height: labelHeight))
        
        // look-and-feel of the label
        label.backgroundColor = UIColor.cyan
        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.textColor = .black
        label.textAlignment = .center
        label.text = name
        // add the label to the stack view
        nameStackView.addSubview(label)
        
        // remember the label
        labels.append(label)

        
    }
    
    func addNewScoreLabel(_ score: Int){
        
        // how tall is each label
        let labelHeight = scoreStackView.frame.height / maxLabels
        
        // create a label
        let label = UILabel(frame: CGRect(x: 0, y: yPos, width: scoreStackView.frame.width, height: labelHeight))
        
        // look-and-feel of the label
        label.backgroundColor = UIColor.cyan
        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.textColor = .black
        label.textAlignment = .center
        
        label.text = "\(score)"
        // add the label to the stack view
        scoreStackView.addSubview(label)
        
        // remember the label
        labels.append(label)
        
        // update values for the next label
        yPos += labelHeight + spacing
    }
    

}
