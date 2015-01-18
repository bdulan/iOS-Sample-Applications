//
//  ViewController.swift
//  Stopwatch
//
//  Created by Ethan Wyatt on 1/4/15.
//  Copyright (c) 2015 emp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var timeInSecs: UILabel!
    
    var i = 1
    var count = 0
    var timerSec = NSTimer()
    
    @IBAction func play(sender: AnyObject) {
        timerSec = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("playTime"), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(sender: AnyObject) {
        timerSec = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("pauseTime"), userInfo: nil, repeats: true)
    }
    
    @IBAction func stop(sender: AnyObject) {
        timerSec = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("stopTime"), userInfo: nil, repeats: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func playTime(){
        count++
        timeInSecs.text = "\(count)"
    }
    func pauseTime(){
        timerSec.invalidate()
    }
    func stopTime(){
        timerSec.invalidate()
        count = 0
        timeInSecs.text = "\(count)"
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

