//
//  Game Rounds.swift
//  02 Abschluss
//
//  Created by Eggenschwiler Andre on 16.08.24.
//

import Foundation

func runde() {
    // Rundennummer drucken
    print("\n\(red)---------------------------- Round \(round) ----------------------------\n\(reset)")
    
    let maxSkill:Int = 1
    var skillCount:Int = 0
    skillCount += skill
    
    // Spieleraktionen
    for hero in heroList {
        if hero.baseLp > 0 {
            print("\(hero.name) ----> LP: \(hero.baseLp) ATK: \(hero.baseAtk) DEF: \(hero.baseDef)\n")
            print("1. Attack")
            
            // Use an Item wird nur angezeigt, wenn ein Item im Inventar ist
            var options = [1] // Optionen initialisieren
            if !hero.inventory.isEmpty {
                print("2. Use an Item")
                options.append(2)
            }
            
            // Heal wird nur angezeigt, wenn der Held die Fähigkeit CanHeal besitzt
            if hero is Heal {
                if skillCount < maxSkill {
                    print("3. Heal left: \(maxSkill - skillCount)")
                    hero.baseLp += Int.random(in: 40...60)
                    options.append(3)
                } else {
                    print("Heal is over")
                }
                
            } else if hero is BattleShout {
                if skillCount < maxSkill {
                    print("3. Battle Shout left: \(maxSkill - skillCount)")
                    hero.baseAtk += Int.random(in: 40...60)
                    hero.baseDef += Int.random(in: 40...60)
                    options.append(3)
                } else {
                    print("Battle Shout has used")
                }
                
            } else if hero is MagicSpell {
                if skillCount < maxSkill {
                    print("3. Magic Spell left: \(maxSkill - skillCount)")
                    hero.baseAtk += Int.random(in: 50...70)
                    hero.baseDef -= Int.random(in: 10...20)
                    options.append(3)
                } else {
                    print("Magic Spell has used")
                }
                
            } else if hero is WoddenShield {
                if skillCount < maxSkill {
                    print("3. Wodden Shield left: \(maxSkill - skillCount)")
                    hero.baseDef += Int.random(in: 70...90)
                    options.append(3)
                } else {
                    print("Wodden Shield has used")
                }
                
            }
            // Spieler kann auswählen, was er machen will
            var choose: Int?
            
            while choose == nil {
                let input:Int = Int(readLine()!) ?? 1
                
                if options.contains(input) {
                    choose = input
                } else {
                    print("Wrong Input!!!.")
                }
            }
            
            // Wenn der Spieler einen Angriff auswählt
            if choose == 1 {
                print("Which one do you want to attack?\n")
                
                // Liste der Gegner anzeigen
                for (index, enemy) in enemys.enumerated() {
                    print("[\(index + 1)] \(enemy.name) - HP: \(enemy.baseLp)")
                }
                
                // Gegnerauswahl 
                var select: Int?
                
                while select == nil {
                    let selection = Int(readLine()!) ?? 1
                        if selection > 0 && selection <= enemys.count {
                        select = selection - 1
                    } else {
                        print("Wrong Input!!!.")
                    }
                }
                
                // Angriff auf den ausgewählten Gegner
                let selectedEnemy = enemys[select!]
                hero.attack(victim: selectedEnemy)
                
                // Überprüfen, ob der Gegner besiegt wurde
                enemys = enemys.filter { $0.baseLp > 0 }
                sleep(1)
                
                
                // Wenn der Spieler ein Item verwenden möchte
            } else if choose == 2 {
                if hero.inventory.isEmpty {
                    print("Your inventory is empty!")
                } else {
                    print("Choose an item to use:")
                    
                    // Liste der Items im Inventar anzeigen
                   // die Methode enumerated verwendet, um eine Sequenz (z. B. ein Array) mit einer Aufzählung von Indizes und Werten zu durchlaufen. Diese Methode gibt eine Sequenz von Tupeln zurück, bei denen jedes Tupel aus einem Index und einem entsprechenden Wert aus der ursprünglichen Sequenz besteht.
                     for (index, item) in hero.inventory.enumerated() {
                        // description wandelt diesen Typ in eine lesbare String-Darstellung um
                        print("[\(index + 1)] \(item.name) - Effect: \(item.description)")
                    }
                    
                    // Itemauswahl
                    // ? bedeutet, dass select entweder einen Ganzzahlwert (Int) oder nil enthalten kann
                    var select: Int?
                    
                    while select == nil {
                    
                    let selection = Int(readLine()!) ?? 1
                        if selection > 0 && selection <= hero.inventory.count {
                            select = selection - 1
                        } else {
                            print("Wrong Input!!!.")
                        }
                    }
                    
                    // Ausgewähltes Item verwenden
                    let item = hero.inventory[select!]
                    item.use(on: hero)
                    
                    // Entfernen des verwendeten Items aus dem Inventar
                    hero.inventory.remove(at: select!)
                    sleep(1)
                }
                
                
                // Wenn der Spieler die Skill aktion auswählt
            } else if choose == 3 {
                if hero is Heal {
                    priestNpc.heal()
                }
                if hero is BattleShout {
                    warriorNpc.battleShout()
                }
                if hero is MagicSpell  {
                    fireMageNpc.magicSpell()
                }
                if hero is WoddenShield {
                    druidNpc.woddenShieldfunc()
                }
                skill += 1
            }
            
            // Orcs greifen an
            for enemy in enemys {
                if hero.baseLp > 0 {
                    // Zufälligerweise den Helden oder NPC angreifen, aber nur einmal pro Runde
                    if let target = heroList.randomElement() {
                        enemy.attack(victim: target)
                    }
                }
            }
        }
    }
    
    // Entferne tote Helden aus der Liste
    heroList = heroList.filter { $0.baseLp > 0 }
    
    
    // Überprüfen, ob ein Team besiegt wurde
    if heroList.isEmpty {
        print("\nYour Team are Dead 💀")
        print("""
        \(red)
   
   
        
        ██╗   ██╗ ██████╗ ██╗   ██╗    ██╗      ██████╗ ███████╗███████╗
        ╚██╗ ██╔╝██╔═══██╗██║   ██║    ██║     ██╔═══██╗██╔════╝██╔════╝
         ╚████╔╝ ██║   ██║██║   ██║    ██║     ██║   ██║███████╗█████╗
          ╚██╔╝  ██║   ██║██║   ██║    ██║     ██║   ██║╚════██║██╔══╝
           ██║   ╚██████╔╝╚██████╔╝    ███████╗╚██████╔╝███████║███████╗
           ╚═╝    ╚═════╝  ╚═════╝     ╚══════╝ ╚═════╝ ╚══════╝╚══════╝
    

\(reset)
   
""")
        gameOver = true
    } else if enemys.isEmpty {
        print("\nYOU KILL the Enemies! 🏆")
        print("""
        \(yellow)
        
    
        ██╗   ██╗ ██████╗ ██╗   ██╗    ██╗    ██╗██╗███╗   ██╗
        ╚██╗ ██╔╝██╔═══██╗██║   ██║    ██║    ██║██║████╗  ██║
         ╚████╔╝ ██║   ██║██║   ██║    ██║ █╗ ██║██║██╔██╗ ██║
          ╚██╔╝  ██║   ██║██║   ██║    ██║███╗██║██║██║╚██╗██║
           ██║   ╚██████╔╝╚██████╔╝    ╚███╔███╔╝██║██║ ╚████║
           ╚═╝    ╚═════╝  ╚═════╝      ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝
    

\(reset)
""")
        gameOver = true
    }
    
    // Rundennummer erhöhen
    round += 1
    }
