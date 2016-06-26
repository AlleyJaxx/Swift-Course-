//
//  DevilWizard.swift
//  muckaround
//
//  Created by Alex Jackson on 26/05/16.
//  Copyright © 2016 Alex Jackson. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    
    override var loot: [String] {
        return ["Factory-new Dagger", "Gold Amulet", "Devil Blood"]
    }
    
    override var type: String {
        return "DevilWizard"
    }
    
}