//
//  ViewController.swift
//  EggTimer
//
//  Created by dl1 on 3/3/21.
//

import UIKit

class ViewController: UIViewController {

    let eggTimes = ["Soft": 3, "Hard": 2, "Medium": 4]
    var secondsRemaining = 60
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        secondsRemaining = eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo:nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondsRemaining > 0 {
            print("\(secondsRemaining) seconds.")
            secondsRemaining -= 1
        }
        if secondsRemaining == 0 {
            print("Times up")
        }
        
    }
}

