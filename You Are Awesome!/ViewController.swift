//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Cooper Schmitz on 1/13/20.
//  Copyright © 2020 Cooper Schmitz. All rights reserved.
//

import UIKit
// bogus comment

// yet another bogus comment

class ViewController: UIViewController {
    @IBOutlet weak var messageLable: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLable.text = ""
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        print(imageNumber)
        let imageName = "image\(imageNumber)"
        imageView.image = UIImage(named: imageName)
        imageNumber = imageNumber + 1
        if imageNumber == 10 {
            imageNumber = 0
        }
    
        
        
        //        let awesomeMessage = "You Are Awesome!"
        //        let greatMessage = "You Are Great!"
        //        let bombMessage = "You Are Da Bomb!"
        //
        //        if messageLable.text == awesomeMessage {
        //            messageLable.text = greatMessage
        //            imageView.image = UIImage(named: "image1")
        //        } else if messageLable.text == greatMessage {
        //            messageLable.text = bombMessage
        //            imageView.image = UIImage(named: "image2")
        //        } else {
        //            messageLable.text = awesomeMessage
        //            imageView.image = UIImage(named: "image0")
        //        }
    }
    
}

