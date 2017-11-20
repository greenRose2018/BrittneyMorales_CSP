//
//  Helicopter.swift
//  BrittneyMorales_CSP
//
//  Created by Morales, Brittney on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import Foundation
public class Helicopter :  Flyable
{
    public var flyState : Bool
    
    public init()
    {
        self.flyState = false
    }
    public func fly() -> Void
    {
        print("I can fly")
        flyState = true
    }
    public func isFlying() -> Bool
    {
        if(flyState)
        {
            print("Flying")
        }
        else
        {
            print("On the ground")
        }
        return flyState
    }
}
