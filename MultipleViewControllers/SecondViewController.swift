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
    
    
    @IBAction func button0(_ sender: UIButton) {
        let textScore:Int = Int(textFields[count].text!)!
        game.players[count].score = textScore
        
        game.players[count].score += 0
        textFields[count].text = "\(game.players[count].score)"
        nextTurn()
    }
    @IBAction func button1(_ sender: UIButton) {
        let textScore:Int = Int(textFields[count].text!)!
        game.players[count].score = textScore
        
        game.players[count].score += 1
        textFields[count].text = "\(game.players[count].score)"
        nextTurn()
    }
    @IBAction func button2(_ sender: UIButton) {
        let textScore:Int = Int(textFields[count].text!)!
        game.players[count].score = textScore
        
        game.players[count].score += 2
        textFields[count].text = "\(game.players[count].score)"
        nextTurn()
    }
    @IBAction func button3(_ sender: UIButton) {
        let textScore:Int = Int(textFields[count].text!)!
        game.players[count].score = textScore
        
        game.players[count].score += 3
        textFields[count].text = "\(game.players[count].score)"
        nextTurn()
    }
    @IBAction func button4(_ sender: UIButton) {
        let textScore:Int = Int(textFields[count].text!)!
        game.players[count].score = textScore
        
        game.players[count].score += 4
        textFields[count].text = "\(game.players[count].score)"
        nextTurn()
    }
    @IBAction func button5(_ sender: UIButton) {
        let textScore:Int = Int(textFields[count].text!)!
        game.players[count].score = textScore
        
        game.players[count].score += 5
        textFields[count].text = "\(game.players[count].score)"
        nextTurn()
    }
    @IBAction func button6(_ sender: UIButton) {
        let textScore:Int = Int(textFields[count].text!)!
        game.players[count].score = textScore
        
        game.players[count].score += 6
        textFields[count].text = "\(game.players[count].score)"
        nextTurn()
    }
    @IBAction func button7(_ sender: UIButton) {
        let textScore:Int = Int(textFields[count].text!)!
        game.players[count].score = textScore
        
        game.players[count].score += 7
        textFields[count].text = "\(game.players[count].score)"
        nextTurn()
    }
    @IBAction func button8(_ sender: UIButton) {
        let textScore:Int = Int(textFields[count].text!)!
        game.players[count].score = textScore
        
        game.players[count].score += 8
        textFields[count].text = "\(game.players[count].score)"
        nextTurn()
    }
    @IBAction func button9(_ sender: UIButton) {
        let textScore:Int = Int(textFields[count].text!)!
        game.players[count].score = textScore
        
        game.players[count].score += 9
        textFields[count].text = "\(game.players[count].score)"
        nextTurn()
    }
    @IBAction func button10(_ sender: UIButton) {
        let textScore:Int = Int(textFields[count].text!)!
        game.players[count].score = textScore
        
        game.players[count].score += 10
        textFields[count].text = "\(game.players[count].score)"
        nextTurn()
    }
    @IBAction func button11(_ sender: UIButton) {
        let textScore:Int = Int(textFields[count].text!)!
        game.players[count].score = textScore
        
        game.players[count].score += 11
        textFields[count].text = "\(game.players[count].score)"
        nextTurn()
    }
    @IBAction func button12(_ sender: UIButton) {
        let textScore:Int = Int(textFields[count].text!)!
        game.players[count].score = textScore
        
        game.players[count].score += 12
        textFields[count].text = "\(game.players[count].score)"
        nextTurn()
    }
    @IBAction func button13(_ sender: UIButton) {
        let textScore:Int = Int(textFields[count].text!)!
        game.players[count].score = textScore
        
        game.players[count].score += 13
        textFields[count].text = "\(game.players[count].score)"
        nextTurn()
    }
    
    
    
    
    
    
    
    var game = Game()
    
    var labels: [UILabel] = []
    var textFields: [UITextField] = []

    var yPos: CGFloat = 0
    var count = 0


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
        
        textFields[count].backgroundColor = UIColor.yellow
        labels[count].backgroundColor = UIColor.yellow
        
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
        let textField = UITextField(frame: CGRect(x: 0, y: yPos, width: scoreStackView.frame.width, height: labelHeight))
        
        // look-and-feel of the label
        textField.backgroundColor = UIColor.cyan
        textField.font = UIFont.preferredFont(forTextStyle: .body)
        textField.textColor = .black
        textField.textAlignment = .center
        
        textField.text = "\(score)"
        // add the label to the stack view
        scoreStackView.addSubview(textField)

        textFields.append(textField)
        // update values for the next label
        yPos += labelHeight + spacing
        
        print(textField.isUserInteractionEnabled)
    }
    

    func nextTurn(){
        textFields[count].backgroundColor = UIColor.cyan
        labels[count].backgroundColor = UIColor.cyan
        
        if(count==labels.count - 1){
            count = 0
        }else{
            count += 1
        }
        
        textFields[count].backgroundColor = UIColor.yellow
        labels[count].backgroundColor = UIColor.yellow
    }
}
