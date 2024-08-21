//
//  Charakters.swift
//  02 Abschluss
//
//  Created by Eggenschwiler Andre on 13.08.24.
//

import Foundation

// Super Class

class Characters: CharProtocol {
    var name: String
    var baseLp:Int = 100 {
        didSet {
           if baseLp < oldValue {
                print("-----------------------------------------")
                print("\(name) says Ouch! 😖 --->  live left \(baseLp)")
            }
        }
    }
    
    var baseAtk:Int
    var baseDef:Int
    var inventory: [Inventory] = []
    
    init(name: String, baseAtk: Int, baseDef:Int) {
        self.name = name
        self.baseAtk = baseAtk
        self.baseDef = baseDef
        self.inventory = []
    }
    
    func addItemToInventory(item: Inventory) {
        inventory.append(item)
    }
    
    func attack(victim: Characters) {
        let damage:Int = max(0, self.baseAtk - baseDef)
        victim.baseLp -= damage
        print("\n\(name) Attack \(victim.name)! ⚔️ -- Hit for \(damage) Damage --> 🤬\n")
        
        
        if (victim.baseLp <= 0) {
            print("\(victim.name) are Dead! ☠️")
        }
    }
}
        
    
    

