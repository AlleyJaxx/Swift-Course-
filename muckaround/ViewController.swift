//
//  ViewController.swift
//  muckaround
//
//  Created by Alex Jackson on 19/05/16.
//  Copyright © 2016 Alex Jackson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    

    
    @IBOutlet weak var playerImg: UIImageView!
    
    @IBOutlet weak var enemyImg: UIImageView!
    
    @IBOutlet weak var playerHPLbl: UILabel!
    
    @IBOutlet weak var enemyHPLbl: UILabel!
    
    @IBOutlet weak var printLbl: UILabel!
    
    @IBOutlet weak var chestImg: UIButton!
    
    @IBAction func attackTapped(sender: AnyObject) {
        
        if enemy.attemptAttack(player.attackPwr) {
            printLbl.text = "Attacked \(enemy.type) for \(player.attackPwr) HP!"
        } else {
            printLbl.text = "Attack was unsuccessful!"
        }
        
        if let loot = enemy.dropLoot() {
            player.addToInventory(loot)
            chestMessage = "\(player.name) found \(loot)"
            chestImg.hidden = false
        }
        
        if !enemy.isAlive {

            enemyHPLbl.text = ""
            printLbl.text = "Killed \(enemy.type)"
            enemyImg.hidden = true
        }
    }
    
    @IBAction func chestTapped(sender: AnyObject) {
        chestImg.hidden = true
        printLbl.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(name: "DirtyLaundry21", hp: 110, attackPwr: 20)
        
        playerHPLbl.text = "\(player.hp) HP"
        
    }
    
    
    func generateRandomEnemy() {
        let rand = Int(arc4random_uniform(UInt32(2)))
        
        if rand == 0 {
            enemy = Kimara(hp: 50, attackPwr: 20)
        } else {
            enemy = DevilWizard(hp: 70, attackPwr: 25)
        }
        
        
        
        
    }
    
    


}

