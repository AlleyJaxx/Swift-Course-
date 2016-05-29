//
//  Enemy.swift
//  muckaround
//
//  Created by Alex Jackson on 19/05/16.
//  Copyright © 2016 Alex Jackson. All rights reserved.
//

import Foundation

class Enemy: Character {
    
    var type: String {
        return "Grunt"
    }
    
   
    
    
    var loot: [String] {
        return ["Rusty Dagger", "Bronze Amulet"]
    }
    
    func dropLoot() -> String? {
        
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }
        
        return nil
        
        
    }

    
}