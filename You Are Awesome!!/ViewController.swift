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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("👍 viewDidLoad has run")
        messageLabel.text = " "
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😎 The message button was pressed!")
        messageLabel.text = "You Are Awesome!!"
        messageLabel.textColor = UIColor.blue
        messageLabel.textAlignment = .left
    }
    @IBAction func messageButtonTwo(_ sender: UIButton) {
        print("👹 The message button was pressed!")
        messageLabel.text = "You Are Great!!"
        messageLabel.textColor = UIColor.systemRed
        messageLabel.textAlignment = .right
        
    }
    
}

