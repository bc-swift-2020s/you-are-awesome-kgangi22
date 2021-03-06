//
//  ViewController.swift
//  You Are Awesome!!
//
//  Created by Kyle Gangi on 1/12/20.
//  Copyright © 2020 Kyle Gangi. All rights reserved.
//

import UIKit
import AVFoundation



class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    var messageNumber = -1
    var imageNumber = -1
    let totalNumberOfImages = 9
    let totalNumberOfSounds = 6
    var soundNumber = -1
    var audioPlayer = AVAudioPlayer()
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
        
    }
    
    func playSound(name: String){
        if let sound = NSDataAsset(name: name){
                  do {
                      try audioPlayer = AVAudioPlayer(data: sound.data)
                      audioPlayer.play()
                  }catch{
                      print("ERROR 123")
                  }
              }else{
                  print("ERROR")
              }
        

    }
    
    
    func nonRepeatingRandom(originalNumber: Int, upperLimit: Int) -> Int{
        
        var newNumber: Int
        repeat{
            newNumber = Int.random(in: 0...upperLimit)
        }while originalNumber == newNumber
        return newNumber
        
        
        
        
    }
    
    
    
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome", "You Are Great", "You Are Fantastic", "You Are A Legend", "You Swifty", "You Make Me Smile", "I Think You're Magic", "When the Genius Bar Needs Help, They Call You"]
        
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperLimit: messages.count - 1)
           messageLabel.text = messages[messageNumber]
           
           
       imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperLimit: totalNumberOfImages - 1)
           imageView.image = UIImage(named: "image\(imageNumber)")
        
        
       soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperLimit: totalNumberOfSounds - 1)
            
                 
        
        playSound(name: "sound\(soundNumber)")
        
       
        
      
        
        
       
                //        let awesomeMessage = "You Are Awesome!!"
                //        let greatMessage = "You Are Great!!"
                //        let bombMessage = "You Are Da Bomb!!"
                //
                //        if messageLabel.text == awesomeMessage {
                //            messageLabel.text = greatMessage
                //            imageView.image = UIImage(named: "image1")
                //        } else if messageLabel.text == greatMessage {
                //            messageLabel.text = bombMessage
                //            imageView.image = UIImage(named: "image2")
                //        } else {
                //            messageLabel.text = awesomeMessage
                //            imageView.image = UIImage(named: "image0")
                //
                //        }
        
    }
    
}




