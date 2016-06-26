//
//  Kimara.swift
//  muckaround
//
//  Created by Alex Jackson on 22/05/16.
//  Copyright © 2016 Alex Jackson. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    
    let MAX_IMMUNITY = 15
    
    override var loot: [String] {
        return ["Used Dagger", "Silver Amulet"]
    }
    
    override var type: String {
        return "Kimara"
    }
    
    override func attemptAttack(incomingAttack: Int) -> Bool {
        if incomingAttack >= MAX_IMMUNITY {
            return super.attemptAttack(incomingAttack)
        } else {
            return false
        }
    }
    
    
    
}