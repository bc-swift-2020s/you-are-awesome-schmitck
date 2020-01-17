//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Cooper Schmitz on 1/13/20.
//  Copyright © 2020 Cooper Schmitz. All rights reserved.
//

import UIKit
// bogus comment

class ViewController: UIViewController {
    @IBOutlet weak var messageLable: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        messageLable.text = "You Are Awesome!"
        imageView.image = UIImage(named: "image0")
    }
    
}

