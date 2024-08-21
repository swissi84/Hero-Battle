//
//  Fight.swift
//  02 Abschluss
//
//  Created by Eggenschwiler Andre on 12.08.24.
//

import Foundation


func rdnConditions() -> Int {
    let numberRdn:Int = Int.random(in: 1...4)
    var conditions:Int = 0
    if let number = ConditionsEnum(rawValue: numberRdn) {
        
        switch number {
            
        case .sunny:
            print("\nit is Sunny. Do you feel connected to nature?")
            druid.self.baseAtk += 20
            druid.self.baseDef += 20
            conditions -= 10
        
        case .night:
            print("\nit is Night. Have you Light?")
            fireMage.self.baseAtk += 20
            fireMage.self.baseDef += 20
            conditions -= 10
       
        case .fog:
            print("\nit is Foggy. You can't see far!!")
            warrior.self.baseAtk += 20
            warrior.self.baseDef += 20
            conditions -= 10
        
        case .raining:
            print("\nit is Raining. I can't get a fire!!")
            priest.self.baseAtk += 20
            priest.self.baseDef += 20
            conditions -= 10
        }
    }
        return conditions
}


