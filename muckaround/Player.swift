//
//  Player.swift
//  muckaround
//
//  Created by Alex Jackson on 19/05/16.
//  Copyright © 2016 Alex Jackson. All rights reserved.
//

import Foundation

class Player: Character {
    


    var _name: String = "Player"

    var name: String {
        get {
            return _name
        }
    }

    private var _inventory = [String]()
    
    var inventory: [String] {
            return _inventory
    }
    
    func addToInventory(items: String) {
        _inventory.append(items)
    }
    
    
    convenience init(name: String, hp: Int, attackPwr: Int) {
        self.init(hp: hp, attackPwr: attackPwr)
        _name = name
    }
    
    
    
}