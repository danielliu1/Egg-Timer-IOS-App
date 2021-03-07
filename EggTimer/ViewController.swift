//
//  ViewController.swift
//  EggTimer
//
//  Created by dl1 on 3/3/21.
//

import UIKit

class ViewController: UIViewController {

    let eggTimes = ["Soft": 10, "Hard": 20, "Medium": 14]
    var totalTime = 0
    var timer = Timer()
    var secondsRemaining = 0
    var totalTime = 0
    var timer = Timer()
    var secondsRemaining = 0
    
 
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0.0
        secondsRemaining = 0
        titleLabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo:nil, repeats: true)
    }
    

    @objc func updateTimer() {
        if secondsRemaining < totalTime {
            secondsRemaining += 1
            progressBar.progress = Float(secondsRemaining)/Float(totalTime)
            print(Float(secondsRemaining) / Float(totalTime))
        } else {
            timer.invalidate()
            titleLabel.text = "DONE!"
        }
    }
}

