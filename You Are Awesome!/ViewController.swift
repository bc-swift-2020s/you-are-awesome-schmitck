//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Cooper Schmitz on 1/13/20.
//  Copyright © 2020 Cooper Schmitz. All rights reserved.
//

import UIKit
import AVFoundation
// bogus comment

// yet another bogus comment

class ViewController: UIViewController {
    @IBOutlet weak var messageLable: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 1000
    var messageNumber = 1000
    let totalNumberOfImages = 9
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        messageLable.text = ""
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messageArray = ["You are Awesome!", "You Rock!", "You are the best!", "You the man!", "When the Genuius Bar needs someone, they call you!"]
        var newMessageNumber: Int
       repeat {
            newMessageNumber = Int.random(in: 1...messageArray.count-1)
        } while messageNumber == newMessageNumber
        
        messageNumber = newMessageNumber
        messageLable.text = messageArray[messageNumber]
        
        var newImageNumber: Int
        repeat {
             newImageNumber = Int.random(in: 1...totalNumberOfImages)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        if let sound = NSDataAsset(name: "sound1") {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("😖 Error! \(error.localizedDescription) Could not initialize AVAudioPlayer!")
            }
        } else {
            print("😖 Error! Could not read data!")
        }
        
        
        
    }
    
}

