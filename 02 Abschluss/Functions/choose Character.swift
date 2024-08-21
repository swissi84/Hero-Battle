//
//  Choose Charakter.swift
//  02 Abschluss
//
//  Created by Eggenschwiler Andre on 12.08.24.
//

import Foundation



func choseCharacter() -> Characters {
    print("""
     \(bold)
    1. \(blue)Warrior ---> Battle Shout ---> have Sword an Shield\(reset)
    
    2. \(yellow)Fire Mage    ---> Magic Spell  ---> have a Torch\(reset)
    
    3. \(magenta)Priest  ---> Self Heal    ---> have a Torch\(reset)
    
    4. \(green)Druid   ---> Wodden Shield --> Love Day\(reset)
    """)
    
    while true {
        guard let numberInput = readLine(),
              let number = Int(numberInput),
              let character = CharactersEnum(rawValue: number)
        else {
            print("Wrong Input")
            continue
        }
        
       switch character {
            
        case .warrior:
            print("\(blue)You choose Class Warrior")
            sleep(2)
            return warrior
        case .mage:
            print("\(yellow)You choose Class Mage")
            sleep(2)
            return fireMage
        case .priest:
            print("\(magenta)You choose Class Priest")
            sleep(2)
            return priest
        case .druid:
            print("\(green)You choose Class Druid")
            sleep(2)
            return druid
        }
    }
}

