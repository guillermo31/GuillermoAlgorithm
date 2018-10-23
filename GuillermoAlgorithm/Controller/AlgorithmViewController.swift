//
//  ViewController.swift
//  GuillermoAlgorithm
//
//  Created by Ramos aguirre, Guillermo on 10/23/18.
//  Copyright © 2018 ctec. All rights reserved.
//

import UIKit

public class AlgorithmViewController: UIViewController
{
   
    @IBOutlet weak var algorithmImage: UIImageView!
    @IBOutlet weak var algorithmLabel: UILabel!
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        formatAlgorithm()
    }

    public override func didReceiveMemoryWarning() -> Void
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func formatAlgorithm() -> Void
    {
        let title : String = "How to Make an App in Xcode"
        
        //step variables
        let stepOne : String = "1. Open Xcode and select the type of app you want to make(iOS, macOS, tvOS)"
        let stepTwo : String = "2. Organize files into folders using MVC structure."
        let stepThree : String = "3. Inside the controller file write the needed code for the app."
        let stepFour :  String = "6. Inside the view file design the UI of the app."
        let stepFive : String = "5. Utilize the built-in simulator or use an iOS device to test app."
        let stepSix : String = "6. Repeat 3, 4, and 5 as needed."
        
        //list of steps
        let algorithm = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmLabel.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary)
        
        // loops through each step's string to format it
        for step in algorithm
        {
            let code : String = "💻"
            let formattedStep: String = "\n\(code) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let outlineStyle = createOutlineStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : outlineStyle], range: NSMakeRange(0, attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        algorithmLabel.attributedText = fullAttributedString
    }
    
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
        
    }
    
    
}

