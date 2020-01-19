//
//  ViewController.swift
//  You Are Awesome!!
//
//  Created by Kyle Gangi on 1/12/20.
//  Copyright © 2020 Kyle Gangi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    var messages = ["You Are Awesome", "You Are Great", "You Are Fantastic", "You Are A Legend", "You Swifty", "You Make Me Smile", "I Think You're Magic"]
    var messageNumber = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
        
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        print(imageNumber)
        let imageName = "image" + String(imageNumber)
        imageView.image = UIImage(named:imageName )
        imageNumber = imageNumber + 1
        if imageNumber == 10 {
            imageNumber = 0
        }
        
        messageLabel.text = messages[messageNumber]
        messageNumber = (messageNumber) + 1
        if messageNumber == messages.count {
            messageNumber = 0
        }
        
        
        
        
       
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




