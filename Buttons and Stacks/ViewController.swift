//
//  ViewController.swift
//  Buttons and Stacks
//
//  Created by Kyle Gangi on 1/23/20.
//  Copyright © 2020 Kyle Gangi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorLabel: UILabel!
    var colors: [UIColor] = [.red,.orange,.yellow,.green,.blue,.systemIndigo,.purple ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func colorButtonPressed(_ sender: UIButton) {
        print("You Clicked Tag Number \(sender.tag)")
        
        if sender.tag >= 0 && sender.tag <= 6{
            colorLabel.text = "You Clicked \(sender.currentTitle!)"
                   colorLabel.textColor = colors[sender.tag]
        }
        else{
            colorLabel.text = ""
        }
        
     
       
        
    }
    
}
