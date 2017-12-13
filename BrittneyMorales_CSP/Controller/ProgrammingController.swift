//
//  ProgrammingController.swift
//  BrittneyMorales_CSP
//
//  Created by Morales, Brittney on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import SpriteKit

public class ProgrammingController: UIViewController {

    override public func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        let gameScene = StartScene(size: view.bounds.size)
        let gameView = view as! SKView
        
        gameView.showsFPS = true            // comment out when finished with game
        gameView.showsNodeCount = true      // comment out when finished with game
        gameView.ignoresSiblingOrder = true
        
       gameScene.scaleMode = .resizeFill
       gameView.presentScene(gameScene)

        // Do any additional setup after loading the view.
    }
}
