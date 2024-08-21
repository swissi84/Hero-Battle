//
//  Items Add.swift
//  02 Abschluss
//
//  Created by Eggenschwiler Andre on 16.08.24.
//

import Foundation

var healPotion = InventoryPotions (
    name: "Heal Potion",
    effectDescription: "+ 60 LP",
    
    potions: { hero in
        hero.baseLp += 60
        print("\(hero.name) used a Heal Potion and add 60 LP! LP: \(hero.baseLp)")
    }
)
 
var schildPotion = InventoryPotions (
    name: "Schild Potion",
    effectDescription: "+ 40 Def",
    
    potions: { hero in
        hero.baseDef += 40
        print("\(hero.name) used a Defense Potion and add 40 Defense! DEF: \(hero.baseLp)")
    }
)



var sword = InventoryItems (
    name: "Dark Sword",
    description: "+ 40 Atk",
    attack: { hero in
        hero.baseAtk += 40
        print("\(hero.name) add Attack Points: \(hero.baseAtk)")
    },
    defense: { hero in
        hero.baseDef += 0
        }
)


var schild = InventoryItems (
    name: "Golden Tower",
    description: "+ 40 Def",
    
    attack: { hero in
        hero.baseAtk += 0
        },
    defense: {hero in
        hero.baseDef += 40
        print("\(hero.name) add Defense Points: \(hero.baseDef)")
    }
)


