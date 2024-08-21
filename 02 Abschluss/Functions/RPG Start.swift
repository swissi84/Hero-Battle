//
//  RPG Start Ver2.swift
//  02 Abschluss
//
//  Created by Eggenschwiler Andre on 15.08.24.
//

import Foundation

func rpgStart2() {
    let name:String = welcome()
    
    print("""
    
    
    \(titelColor())                      Map and Conditions                      \n\(reset)
    """)
    
    let map = rdnMap()
    let conditions = rdnConditions()
    
    print("""
    
    
    \(titelColor())                        Your Opponents                        \n\(reset)
    """)
    
    enemyList = rdnEnemys()
    // Gegner der Liste Hinzufügen
    enemys.append(contentsOf: enemyList)
    //Liste der Zufälligen Gegner
    printEnemyList(enemys)
    
    print("""
    
    
    \(titelColor())                     Choose you Class \(name)                    \n\(reset)
    """)
    
    let player = choseCharacter()
    heroList.append(player)
    
    print("""
    
    
    \(titelColor())                   Choose your Companion \(name)              \n\(reset)
    """)
    // wandelt diesen Typ in eine lesbare String-Darstellung um. Damit ich die mit einem anderen String vergleichen kann.
    let playerClass = String(describing: type(of: player))
    let companion = chooseNpc(playerClass: playerClass)
    heroList.append(companion)
    
    print("""
    
    
    \(titelColor())                     Choose your Item \(name)                 \n\(reset)
    """)
    
    let added = chooseItem()
    player.addItemToInventory(item: added )
    
    //Map und Bedingungen unterschiede
    let value:Int = map + conditions
    player.baseAtk += value
    player.baseDef += value
    companion.baseAtk += value
    companion.baseDef += value
    
    rdyBattle()
    
    print("""
    
                     ⚔️                       ⚔️
    \(titelColor())                        Battle Begin                       \n\(reset)
    """)
    
    battle()
    
}
