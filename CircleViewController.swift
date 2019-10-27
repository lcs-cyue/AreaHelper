//
//  ViewController.swift
//  AreaHelper
//
//  Created by Yue, Chelsea on 2019/10/22.
//  Copyright © 2019 Chelsea Yue. All rights reserved.
//

import UIKit
import AVFoundation

class CircleViewController: UIViewController {
    
 
    @IBOutlet weak var answerPad: UIView!
    @IBOutlet weak var labelOutput: UILabel!
    @IBOutlet weak var RadiusValue: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Changed the text of the label
        labelOutput.text = "Circle page"
    }
    
    //A function that will speak whatever message is provided
    func speak(message: String) {
        
        // Make an object named 'synthesizer', which is an instance of the class 'AVSPeechSythesizer'
        let synthesizer = AVSpeechSynthesizer()
        
        // Make an object named 'utterance', which is an instance of the class 'AVSpeechUtterance'
        let utterance = AVSpeechUtterance(string: message)
        
        // Speak the message
        synthesizer.speak(utterance)
        
        //Print the message
        print(message)
        
    }
    
    /// Finds the area of a circle
    /// - Parameter radius: the radius of the circle
    /// - Returns: the area of the circle
    func areaOfCircle(radius: Double) -> Double {
        return Double.pi * pow(radius, 2.0)
    }
}

