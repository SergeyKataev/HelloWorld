//
//  ViewController.swift
//  HelloWorld
//
//  Created by kataev-ss on 01.12.2020.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redSign: UIButton!
    @IBOutlet weak var yellowSign: UIButton!
    @IBOutlet weak var greenSign: UIButton!
    @IBOutlet weak var startButton: UIButton!

    var currentNumColor = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSign.layer.cornerRadius = 0.5 * redSign.bounds.size.width
        yellowSign.layer.cornerRadius = 0.5 * yellowSign.bounds.size.width
        greenSign.layer.cornerRadius = 0.5 * greenSign.bounds.size.width
        
        startButton.layer.cornerRadius = 5
        redSign.alpha = 0.5
        yellowSign.alpha = 0.5
        greenSign.alpha = 0.5
    }
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        startButton.setTitle("Next", for: .normal)
        
        redSign.alpha = 0.5
        yellowSign.alpha = 0.5
        greenSign.alpha = 0.5
        
        currentNumColor += 1
        if currentNumColor > 3 {
            currentNumColor = 1
        }
        switch currentNumColor {
        case 1:
            redSign.alpha = 1
        case 2:
            yellowSign.alpha = 1
        case 3:
            greenSign.alpha = 1
        default:
            print("some error")
        }
        
        
    }
    


}

