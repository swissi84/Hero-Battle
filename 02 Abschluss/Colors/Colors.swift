//
//  Colors.swift
//  02 Abschluss
//
//  Created by Eggenschwiler Andre on 19.08.24.
//

import Foundation

let red = "\u{001B}[31m"
let green = "\u{001B}[32m"
let yellow = "\u{001B}[33m"
let blue = "\u{001B}[34m"
let magenta = "\u{001B}[35m"
let cyan = "\u{001B}[36m"
let bold = "\u{001B}[1m"
let underline = "\u{001B}[4m"
let backgroundYellow = "\u{001B}[43m"

let reset = "\u{001B}[0m"

func titelColor() -> String {
   return "\(cyan)\(bold)\(underline)"
}
