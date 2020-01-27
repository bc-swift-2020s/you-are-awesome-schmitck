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
    var soundNumber = -1
    let totalNumberOfImages = 9
    let totalNumberOfSounds = 6
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        messageLable.text = ""
    }
    
    func playSound(name: String) {
        
        if let sound = NSDataAsset(name: name ) {
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
    
    func nonRepeatingRandom(orignalNumber: Int, upperLimit: Int) -> Int {
            var newNumber: Int
            repeat{
                newNumber = Int.random(in: 0...upperLimit)
            } while orignalNumber == newNumber
             return newNumber
        }
        
    
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messageArray = ["You are Awesome!", "You Rock!", "You are the best!", "You the man!", "When the Genuius Bar needs someone, they call you!"]
        
        messageNumber = nonRepeatingRandom(orignalNumber: messageNumber, upperLimit: messageArray.count-1)
        messageLable.text = messageArray[messageNumber]
        
       imageNumber = nonRepeatingRandom(orignalNumber: imageNumber, upperLimit: totalNumberOfImages-1)
        imageView.image = UIImage(named: "image\(imageNumber)")
    
        soundNumber = nonRepeatingRandom(orignalNumber: soundNumber, upperLimit: totalNumberOfSounds-1)
        playSound(name: "sound\(soundNumber)")
        
    }
    
}

