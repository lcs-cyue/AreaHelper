//
//  ViewController.swift
//  AreaHelper
//
//  Created by Yue, Chelsea on 2019/10/22.
//  Copyright © 2019 Chelsea Yue. All rights reserved.
//

import UIKit
import AVFoundation

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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


}
