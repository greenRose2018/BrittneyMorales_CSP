//
//  AlgorithmsController.swift
//  BrittneyMorales_CSP
//
//  Created by Morales, Brittney on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class AlgorithmsController: UIViewController {
    // MARK: Data members
    @IBOutlet weak var algorithmText: UILabel!
    
    private func setupAlgorithm()-> Void
    {
        var algorithmSteps : [String] = [] //How to declare an Array
        
        // TODO: Define Algorithm and all steps
        let algorithm :String = "These are instructions to create a project in Java using Eclipse and Github \n"
        let stepOne :String = "First, open Eclipse and Github."
        let stepTwo :String = "Second, choose a workspace in Eclipse and click launch."
        let stepThree :String = "Third, File click new java project, type appropriate name for project, and click next"
        let stepFour :String = "Fourth, open Github and make a new repository with exact name as projectname"
        let stepFive :String = "Fifth, undo initial commit "
        let stepSix :String = "Sixth, edit gitignore files and add bin/ , *.class , and .DS_Store"
        let stepSeven :String = "Seventh, commit with appropriate sentence describing what was done."
        let stepEight :String = "Eighth, going back to Eclipse to add packages: controller, test, model, and view. "
        let stepNine :String = "Ninth, add 2 Java classes to controller: runner, and controller."
        let stepTen :String = "Tenth, add pvsmsa to runner, and go to controller class and add a start method."
        let stepEleven :String = "Eleventh, go back to Github to commit."
        
        
        // TODO: Finish adding all steps to the algorithm
        algorithmSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix, stepSeven, stepEight, stepNine, stepTen, stepEleven] //How to define an array
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps // a For loop
        {
            let bullet :String = "🤠"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString =  NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0,attributedStringStep.length))
            fullAttributedString.append(attributedStringStep)
        }
        algorithmText.attributedText = fullAttributedString
        
    }
    
    private func createParagraphStyle() -> NSParagraphStyle //A helper method
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setupAlgorithm()
        // Do any additional setup after loading the view.
    }

    override public func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
