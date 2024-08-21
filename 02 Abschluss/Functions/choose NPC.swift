//
//  Choose NPC.swift
//  02 Abschluss
//
//  Created by Eggenschwiler Andre on 19.08.24.
//

import Foundation

func chooseNpc(playerClass: String) -> Characters {
    while true {
        print("\n\(bold)Choose your Companion for the Battle:")
        print("""
          \(bold)
        1. \(blue)NPC Warrior\(reset)
        
        2. \(yellow)NPC Fire Mage\(reset)
        
        3. \(magenta)NPC Priest\(reset)
        
        4. \(green)NPC Druid\(reset)
        
        """)
        
        let input = Int(readLine()!) ?? 1
        
        guard let npc = NpcEnum(rawValue: input)
                
        else {
            print("Wrong Input")
            continue
        }
        
        let selectedNpc: Characters
        
        switch npc {
        case .npcWarrior:
            selectedNpc = warriorNpc
            if playerClass == "Warrior" {
                print("You cannot choose a Warrior as your companion because you are already a Warrior. Please choose another.")
                continue
            } else {
                print("Your Companion is Warrior")
            }
        case .npcMage:
            selectedNpc = fireMageNpc
            if playerClass == "Mage" {
                print("You cannot choose a Mage as your companion because you are already a Mage. Please choose another.")
                continue
            } else {
                print("Your Companion is Mage")
            }
        case .npcPriest:
            selectedNpc = priestNpc
            if playerClass == "Priest" {
                print("You cannot choose a Priest as your companion because you are already a Priest. Please choose another.")
                continue
            } else {
                print("Your Companion is Priest")
            }
        case .npcDruid:
            selectedNpc = druidNpc
            if playerClass == "Druid" {
                print("You cannot choose a Druid as your companion because you are already a Druid. Please choose another.")
                continue
            } else {
                print("Your Companion is Druid")
            }
        }
        
        return selectedNpc
    }
}

