//
//  ViewController.swift
//  isItPrime
//
//  Created by Ethan Wyatt on 1/3/15.
//  Copyright (c) 2015 emp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userInput: UITextField!
    
    @IBOutlet weak var verifyAnswer: UILabel!
    // Check for prime when they click
    @IBAction func checkInt(sender: AnyObject) {
        var number = userInput.text.toInt()
        var isPrime = true
        
        for (var i = 2; i < number; i++) {
            
            if number! % i == 0 {
                isPrime = false
                i = number!
            }
            
        }
        if isPrime == true {
            println("\(number!) is a prime number")
            verifyAnswer.text = "\(number!) is a prime number"
        }
        else {
            println("\(number!) is not a prime number")
            verifyAnswer.text = "\(number!) is not a prime number"
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

