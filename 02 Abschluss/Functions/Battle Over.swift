//
//  Game Over.swift
//  02 Abschluss
//
//  Created by Eggenschwiler Andre on 16.08.24.
//

import Foundation

var gameOver: Bool = false

var round: Int = 1

var skill: Int = 0

var heroList: [Characters] = []
   
var enemyList: [Characters] = []


func attack(attackers: [Characters], victims: inout [Characters]) {
    // attackers greifen an
    for attacker in attackers {
        // zufälligen Gegner aus der Liste auswählen
        if let victim = victims.randomElement() {
            attacker.attack(victim: victim)
            victims = victims.filter { $0.baseLp > 0 }
            sleep(1)
        }
    }
}
