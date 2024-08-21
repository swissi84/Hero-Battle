//
//  Chose Item.swift
//  02 Abschluss
//
//  Created by Eggenschwiler Andre on 15.08.24.
//

import Foundation

func chooseItem() -> Inventory {
    while true {
        for index in 0..<items.count {
            let number = "[\(index + 1)]"
            let item = items[index].name
            let description = items[index].description
            print("Type \(number) for \(item) -------> \(description)")
        }
        
        // Benutzereingabe
        let input = Int(readLine()!) ?? 1
        
        if input > 0 && input <= items.count {
            // Rückgabe des ausgewählten Items
            return items[input - 1]
        } else {
            print("Wrong Input.")
        }
    }
}
