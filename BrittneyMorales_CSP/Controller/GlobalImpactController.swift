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
        
    }
    
    private func setProblemLabel() -> Void
    {
        
        
    }
    
    private func setImpactLabel() -> Void
    {
        
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
