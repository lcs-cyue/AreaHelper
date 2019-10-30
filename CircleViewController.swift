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
    
 
    
    @IBOutlet weak var answerPad: UILabel!
    @IBOutlet weak var radiusValue: UITextField!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        speak(message: "please enter the value")
        
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
    
    
    
    
    // Will be used to check the value
   
    @IBAction func checkValue(_ sender: Any) {
        
        
        //Obtain the guss value in the textfield
        guard let Text = radiusValue.text, Text != "" else {
            speak(message: "Bro, try entering a value.")
            return
        }
        
        
        //Try to convert the string into an integer data type
        guard let radiusValue = Double(Text) else {
            speak(message: "Hey, how about entering a number?")
            return
        }
        
        
        // Finds the area of a circle
        // - Parameter radius: the radius of the circle
        // - Returns: the area of the circle
        func areaOfCircle(radius: Double) -> Double {
            return Double.pi * pow(radius, 2.0)
        }
        
    
    let areaResult = areaOfCircle(radius: radiusValue)
    
    answerPad.text = "Area is \(areaResult)m^2"
    
}


}
