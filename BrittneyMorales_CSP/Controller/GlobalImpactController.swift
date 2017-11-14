//
//  GlobalImpactController.swift
//  BrittneyMorales_CSP
//
//  Created by Morales, Brittney on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class GlobalImpactController: UIViewController {

    
    @IBOutlet weak var planText: UILabel!
    @IBOutlet weak var problemText: UILabel!
    @IBOutlet weak var impactText: UILabel!
    
    private func setupLabelText() -> Void
    {
        setPlanLabel()
        setProblemLabel()
        setImpactLabel()
    }
    
    private func setPlanLabel() -> Void
    {
        var planExplain : [String] = []
        
        let title : String = "The Plan"
        let sentence :String = "The data collected will show if the user is being underpaid"
        let sentence1 :String = "Asking for their location and showing the difference between their pay with others in the area"
        
        planExplain = [sentence, sentence1]
        
        let attributesDictionary = [NSAttributedStringKey.font : planText.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary)
        
        for line in planExplain
        {
            let bullet :String = "🙂"
            let formattedStep :String = "\n\(bullet) \(line)"
            let attributedStringStep : NSMutableAttributedString =  NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0,attributedStringStep.length))
            fullAttributedString.append(attributedStringStep)
        }
        planText.attributedText = fullAttributedString
    }
    
    private func setProblemLabel() -> Void
    {
        var problemExplain : [String] = []
        
        let title :String = "The Problem"
        let sentence :String = "The problem is that women are paid less than men."
        let sentence1 :String = "This is a huge problem, because it shows the inequality in the society."
        //let sentence2 :String = ""
        
        problemExplain = [ sentence, sentence1]
        
        let attributesDictionary = [NSAttributedStringKey.font : planText.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary)
        
        for line in problemExplain
        {
            let bullet :String = "🙂"
            let formattedStep :String = "\n\(bullet) \(line)"
            let attributedStringStep : NSMutableAttributedString =  NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0,attributedStringStep.length))
            fullAttributedString.append(attributedStringStep)
        }
        problemText.attributedText = fullAttributedString
        
    }
    
    private func setImpactLabel() -> Void
    {
        var impactExplain :[String] = []
        
        let title :String = "The Impact"
        let sentence :String = "It impacts me personally, because I could be underpaid, even though i’m doing the exact same job as my coworkers."
        let sentence1 :String = "I would will feel insecure, because I would infer that there is a reasonable  explanation behind it, but I will question if it was due to my skills."
        
        impactExplain = [sentence, sentence1]
        
        let attributesDictionary = [NSAttributedStringKey.font : planText.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary)
        
        for line in impactExplain
        {
            let bullet :String = "🙂"
            let formattedStep :String = "\n\(bullet) \(line)"
            let attributedStringStep : NSMutableAttributedString =  NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0,attributedStringStep.length))
            fullAttributedString.append(attributedStringStep)
        }
        impactText.attributedText = fullAttributedString
    }
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }
    override public func viewDidLoad() {
        super.viewDidLoad()
        setupLabelText()
        
        // Do any additional setup after loading the view.
    }

    override public func didReceiveMemoryWarning() {
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
