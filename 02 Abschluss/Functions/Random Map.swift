//
//  Random Map.swift
//  02 Abschluss
//
//  Created by Eggenschwiler Andre on 19.08.24.
//

import Foundation

func rdnMap() -> Int {
    let numberRdn:Int = Int.random(in: 1...4)
    var mapConditions:Int = 0
    
    if let number = MapEnum(rawValue: numberRdn) {
        
        switch number {
            
        case .forest:
            print("The Battle takes place in the Forest. Do you love trees?")
            druid.self.baseAtk += 40
            druid.self.baseDef += 40
            mapConditions -= 15
            
        case .holyTempel:
            print("The Battle takes place in the Holy Tempel. Are you a believer?")
            priest.self.baseAtk += 40
            priest.self.baseDef += 40
            mapConditions -= 15
            
        case .volcano:
            print("The Battle takes place in the Volcano. I think I'm burning up!")
            fireMage.self.baseAtk += 40
            fireMage.self.baseDef += 40
            mapConditions -= 15
            
        case .castle:
            print("The Battle takes place in the Castle. Hope you love hand-to-hand combat!")
            warrior.self.baseAtk += 40
            warrior.self.baseDef += 40
            mapConditions -= 15
            
        }
    }
    return mapConditions
}
