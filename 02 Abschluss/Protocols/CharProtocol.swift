//
//  Protocols.swift
//  02 Abschluss
//
//  Created by Eggenschwiler Andre on 12.08.24.
//

import Foundation

protocol CharProtocol {
    var name: String { get }
    var baseLp: Int { get set }
    var baseAtk: Int { get set }
    var baseDef: Int { get set }
}
// get (getta) bedeutet das es gelesen werden darf und set (setta) das man es verändern darf.
protocol Heal {
    var baseLp: Int { get set }
}

protocol BattleShout {
    var baseAtk: Int { get set }
    var baseDef: Int { get set }
}

protocol MagicSpell {
    var baseAtk: Int { get set }
    var baseDef: Int { get set }
}

protocol WoddenShield {
    var baseAtk: Int { get set }
    var baseDef: Int { get set }
}
