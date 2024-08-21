//
//  Item.swift
//  02 Abschluss
//
//  Created by Eggenschwiler Andre on 16.08.24.
//

import Foundation

struct InventoryPotions: Inventory {
    var name: String
    var description: String
    var potions: (Characters) -> Void  // Void bedeutet das man nichts zurück gibt man könnte auch () verwenden
    
    init(name: String, effectDescription: String, potions: @escaping (Characters) -> Void) {   //@escaping bedeutet das die Funktion weiter ausgeführt wird nachdem die Function beendet ist.
        self.name = name
        self.description = effectDescription
        self.potions = potions
    }
    
    func use(on character: Characters) {
        potions(character)
    }
        
    
}


struct InventoryItems: Inventory {
    var name: String
    var description: String
    var attack: (Characters) -> Void  // Void bedeutet das man nichts zurück gibt man könnte auch () verwenden
    var defense: (Characters) -> Void
    
    init(name: String, description: String, attack: @escaping (Characters) -> Void, defense: @escaping (Characters) -> Void) {
        //@escaping bedeutet das die Funktion weiter ausgeführt wird nachdem die Function beendet ist. Der Compiler hat fehler angezeigt und man konnte fix klicken.
        self.name = name
        self.description = description
        self.attack = attack
        self.defense = defense
        
    }
    // Funktion um die Items auf den Character anzuwenden
    func use(on character: Characters) {
        attack(character); defense(character)
    }
}
