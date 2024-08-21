//
//  Battle.swift
//  02 Abschluss
//
//  Created by Eggenschwiler Andre on 13.08.24.
//

import Foundation


func rdyBattle() {
    print("""
          
    \(titelColor())              Are you Ready for Battle?                   \(reset)
          
    1. \(green)Yes\(reset)
    2. \(red)Quit\(reset)
          
    
    """)
        
    let numberInput: String = readLine()!
    let number = Int(numberInput)
                
    switch number {
    case 1:
        print("Start the Battle")
    case 2:
        print("You left the Battle.")
        exit(0)
    default:
        print("\nWrong Input!!\n")
        sleep(2)
        rdyBattle()
    }
}

