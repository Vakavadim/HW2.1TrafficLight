//
//  ViewController.swift
//  HW2.1TrafficLight
//
//  Created by Вадим Гамзаев on 19/09/2019.
//  Copyright © 2019 Вадим Гамзаев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redCircle: UIView!
    @IBOutlet weak var yellowCircle: UIView!
    @IBOutlet weak var greenCrircle: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redCircle.alpha = 0.3
        yellowCircle.alpha = 0.3
        greenCrircle.alpha = 0.3
        redCircle.layer.cornerRadius = 75
        yellowCircle.layer.cornerRadius = 75
        greenCrircle.layer.cornerRadius = 75
        startButton.setTitle("Start", for: .normal)
    }

    @IBAction func startButtonTap() {
        
        let red = redCircle.alpha
        let yellow = yellowCircle.alpha
        let green = greenCrircle.alpha
        
        
        
        if startButton.currentTitle == "Start" {
            startButton.setTitle("Next", for: .normal)
            redCircle.alpha = 1
        }
        else if red > 0.4 {
            redCircle.alpha = 0.3
            yellowCircle.alpha = 1
        } else if yellow > 0.4 {
            yellowCircle.alpha = 0.3
            greenCrircle.alpha = 1

        } else if green > 0.4 {
            greenCrircle.alpha = 0.3
            redCircle.alpha = 1
        }
    }
}

