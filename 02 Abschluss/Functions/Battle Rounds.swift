//
//  Battle.swift
//  02 Abschluss
//
//  Created by Eggenschwiler Andre on 16.08.24.
//

import Foundation

func battle() {
    while (!gameOver){
        runde()
        sleep(1)
    }
    print("\n-------------- Battle Over ---------------")
}
