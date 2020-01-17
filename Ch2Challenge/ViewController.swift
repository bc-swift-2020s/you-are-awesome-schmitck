//
//  ViewController.swift
//  Ch2Challenge
//
//  Created by Cooper Schmitz on 1/13/20.
//  Copyright © 2020 Cooper Schmitz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
     print("It's working")
    }

    @IBAction func buttonOne(_ sender: UIButton) {
        print("Button one works!")
        messageLabel.text = "You are awesome!"
        messageLabel.textColor = UIColor.red
        messageLabel.textAlignment = .left
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        print("Button two works!")
        messageLabel.text = "You are great!"
        messageLabel.textColor = UIColor.blue
        messageLabel.textAlignment = .right
    }
    

}

