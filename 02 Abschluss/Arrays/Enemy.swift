//
//  Random Enemy.swift
//  02 Abschluss
//
//  Created by Eggenschwiler Andre on 15.08.24.
//

import Foundation


var enemys: [Characters] = []
 
func printEnemyList(_ enemyList: [Characters]) {
    for (index, enemy) in enemyList.enumerated() {
        print("Enemy \(index + 1): \(enemy.name), \(red)\(bold) LP: \(enemy.baseLp), ATK: \(enemy.baseAtk), DEF: \(enemy.baseDef)\(reset)")
    }
}
 
