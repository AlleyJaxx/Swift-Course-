//
//  Character.swift
//  muckaround
//
//  Created by Alex Jackson on 19/05/16.
//  Copyright © 2016 Alex Jackson. All rights reserved.
//

import Foundation

class Character {
    
    private var _hp: Int = 100
    private var _attackPwr: Int = 30

    var hp: Int {
        get {
            return _hp
        }
    }
    
    var attackPwr: Int {
        get {
            return _attackPwr
        }
    }
    
    var isAlive: Bool {
        get {
            if _hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    init(hp: Int, attackPwr: Int) {
        self._hp = hp
        self._attackPwr = attackPwr
    }
    
    func attemptAttack(incomingAttack: Int) -> Bool  {
        self._hp -= incomingAttack
        
        return true
    }

    
  
    
    
}