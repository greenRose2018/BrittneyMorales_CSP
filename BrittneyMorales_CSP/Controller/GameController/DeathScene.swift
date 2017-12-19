//
//  DeathScene.swift
//  BrittneyMorales_CSP
//
//  Created by Morales, Brittney on 12/19/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import SpriteKit

class DeathScene: SKScene
{
    override public func didMove(to view: SKView) -> Void
    {
        self.backgroundColor = SKColor.black
        
        let gameOver = SKLabelNode(text: " You have DIED!")
        gameOver.name = "game over"
        gameOver.fontSize = 60
        gameOver.fontColor = SKColor.red
        gameOver.position = CGPoint(x: frame.midX, y: frame.midY)
        
        addChild(gameOver)
    }
    
}
