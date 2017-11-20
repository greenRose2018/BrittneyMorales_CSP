//
//  Flyable1.swift
//  BrittneyMorales_CSP
//
//  Created by Morales, Brittney on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import Foundation
public protocol Flyable
{
    var flyState : Bool {get set}
    func fly() -> Void
    func isFlying() -> Bool
}
