//
//  Item Protocol.swift
//  02 Abschluss
//
//  Created by Eggenschwiler Andre on 16.08.24.
//

import Foundation

protocol Inventory {
    var name: String { get }
    var description: String { get set }
    func use(on character: Characters)
}

// get (getta) bedeutet das es gelesen werden darf und set (setta) das man es verändern darf.



