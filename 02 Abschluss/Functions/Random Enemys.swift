//
//  Random Enemys.swift
//  02 Abschluss
//
//  Created by Eggenschwiler Andre on 19.08.24.
//

import Foundation

func rdnEnemys() -> [Characters] {
    // Liste der möglichen Gegner
    var availableEnemies: [EnemyEnum] = [.OrcButcher, .OrcCultist, .undeadVillain, .undeadWitcher]
    
    // Liste, um die ausgewählten Gegner zu speichern
    var enemyList: [Characters] = []
    
    // Wähle zwei unterschiedliche Gegner aus
    for _ in 1...2 {
        // Zufälligen Gegner auswählen
        let numberRdn = Int.random(in: 0..<availableEnemies.count)
        let enemy = availableEnemies[numberRdn]
        
        // Erstelle den Gegner und füge ihn zur Liste der ausgewählten Gegner hinzu
        let rndEnemy: Characters
        switch enemy {
        case .OrcButcher:
            rndEnemy = enemyButcher
        case .OrcCultist:
            rndEnemy = enemyCultist
        case .undeadVillain:
            rndEnemy = enemyVillain
        case .undeadWitcher:
            rndEnemy = enemyWitcher
        }
        enemyList.append(rndEnemy)
        
        // Entferne den ausgewählten Gegner aus der Liste der verfügbaren Gegner, so das nicht 2 mal der gleiche Gegner ausgewählt wird.
        availableEnemies.remove(at: numberRdn)
    }
    // Rückgabe der Liste mit zwei unterschiedlichen Gegnern
    return enemyList
}
