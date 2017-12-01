//
//  InternetDetailViewController.swift
//  BrittneyMorales_CSP
//
//  Created by Morales, Brittney on 11/29/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import WebKit

public class InternetDetailViewController: UIViewController {

    //MARK: GUI  controls
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var webViewer: WKWebView!
    
    var detailAddress : String?
    {
        //MARK: Update the detail view when a value is changed.
        didSet
        {
            configureDetailView()
        }
    }
    var detailText : String?
    {
        didSet
        {
            configureDetailView()
        }
        
    }
    override public func viewDidLoad() {
        super.viewDidLoad()
        configureDetailView()
        // Do any additional setup after loading the view.
    }
    
    private func setup() -> Void
    {
    
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