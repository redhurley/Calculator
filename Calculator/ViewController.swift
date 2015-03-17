//
//  ViewController.swift
//  Calculator
//
//  Created by Donnie Wang on 3/16/15.
//  Copyright (c) 2015 Donnie Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsCurrentlyTypingANumber: Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle
        if userIsCurrentlyTypingANumber {
            display.text = display.text! + digit!
        } else {
            display.text = digit
            userIsCurrentlyTypingANumber = true
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

