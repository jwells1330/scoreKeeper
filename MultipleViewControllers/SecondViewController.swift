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
    
    var status: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label.text = status
    }

}
