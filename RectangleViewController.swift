//
//  ViewController.swift
//  AreaHelper
//
//  Created by Yue, Chelsea on 2019/10/22.
//  Copyright © 2019 Chelsea Yue. All rights reserved.
//

import UIKit
import AVFoundation

class RectangleViewController: UIViewController {
    

    @IBOutlet weak var lengthValue: UITextField!
    @IBOutlet weak var widthValue: UITextField!
    @IBOutlet weak var answerPad: UILabel!
    
    
    //    @IBOutlet weak var widthValue: UITextField!
//    @IBOutlet weak var answerPad: UIView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
      
        
        speak(message: "please enter the value")
    
    }
    
    /// Finds the area of a rectangle
    /// - Parameter length: length of rectangle
    /// - Parameter width: width of rectangle
    /// - Returns: area of the rectangle
    func areaOfRectangle(length: Double, width: Double) -> Double {
        
        return length * width
        
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
        guard let Text = lengthValue.text, Text != "" else {
            speak(message: "Bro, try entering a value.")
            return
        }
        
        guard let Text2 = widthValue.text, Text2 != "" else {
            speak(message: "Bro, try entering a value.")
            return
        }
        
        
        //Try to convert the string into an integer data type
        guard let lengthValue = Double(Text) else {
            speak(message: "Hey, how about entering a number?")
            return
        }
        
        guard let widthValue = Double(Text2) else {
            speak(message: "Hey, how about entering a number?")
            return
        }
        
        let areaResult = areaOfRectangle(length: lengthValue, width: widthValue)
        
        answerPad.text = "Area is \(areaResult)"

    }
    
}
