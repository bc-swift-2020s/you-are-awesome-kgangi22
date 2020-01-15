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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        messageLabel.text = "You Are Awesome!!"
        messageLabel.textColor = UIColor.blue
        imageView.image = UIImage(named: "image0")
        
    }
    
    
}

