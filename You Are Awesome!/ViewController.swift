//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Cooper Schmitz on 1/13/20.
//  Copyright © 2020 Cooper Schmitz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print ("😁 viewDidLoad has run!")
        messageLable.text = "Wonderous!"
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😁 The message button was pressed!")
        messageLable.text = "You Are Awesome!"
    }
    
}

