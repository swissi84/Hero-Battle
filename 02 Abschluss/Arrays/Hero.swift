//
//  Random Hero.swift
//  02 Abschluss
//
//  Created by Eggenschwiler Andre on 15.08.24.
//

import Foundation


func printHeroList(_ heros: [Characters]) {
    for (index, heros) in heros.enumerated() {
        print("Enemy \(index + 1): \(heros.name), LP: \(heros.baseLp), ATK: \(heros.baseAtk), DEF: \(heros.baseDef)")
    }
}
