//
//  SecondViewController.swift
//  MultipleViewControllers
//
//  Created by Joel Hollingsworth on 10/11/16.
//  Copyright © 2016 Joel Hollingsworth. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    
    var labels: [UILabel] = []
    var count = 1
    
    var yPos: CGFloat = 0
    
    /* constant for how much space between each label */
    let spacing: CGFloat = 4
    
    /* constant for how many labels we're expecting */
    let maxLabels: CGFloat = 5
    
    var status: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label.text = status
    }
}
