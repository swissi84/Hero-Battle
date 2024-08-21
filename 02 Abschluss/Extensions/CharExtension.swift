//
//  Extensions.swift
//  02 Abschluss
//
//  Created by Eggenschwiler Andre on 12.08.24.
//

import Foundation


extension CharProtocol {
    func isAlive() -> Bool {
        return self.baseLp > 0
    }
    
    func attack1(_ target: inout CharProtocol ) {
        let damage = max(0, self.baseAtk - target.baseDef) + Int.random(in: 10...20)
            target.baseLp = max(0, target.baseLp - damage)
            print("\n\(self.name) hit \(target.name) for \(damage) damage. \(target.name) has \(target.baseLp) HP left.")
            }
        }
    

