//
//  Welcom.swift
//  02 Abschluss
//
//  Created by Eggenschwiler Andre on 12.08.24.
//

import Foundation

func welcome() -> String {
    print("""

\(cyan)






                 ██╗  ██╗███████╗██████╗  ██████╗
                 ██║  ██║██╔════╝██╔══██╗██╔═══██╗
                 ███████║█████╗  ██████╔╝██║   ██║
                 ██╔══██║██╔══╝  ██╔══██╗██║   ██║
                 ██║  ██║███████╗██║  ██║╚██████╔╝
                 ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝ ╚═════╝
                                                  
        ██████╗  █████╗ ████████╗████████╗██╗     ███████╗
        ██╔══██╗██╔══██╗╚══██╔══╝╚══██╔══╝██║     ██╔════╝
        ██████╔╝███████║   ██║      ██║   ██║     █████╗
        ██╔══██╗██╔══██║   ██║      ██║   ██║     ██╔══╝
        ██████╔╝██║  ██║   ██║      ██║   ███████╗███████╗
        ╚═════╝ ╚═╝  ╚═╝   ╚═╝      ╚═╝   ╚══════╝╚══════╝





\(reset)
""")
    sleep(2)
    let welcome:String = "\n\(bold)Enter Your Name:"
    print(welcome)
    var player:String = readLine() ?? ""
    player = player.capitalized                       // macht den ersten Buchstaben von jedem Wort gross.
    print("\(bold)Welccome \(cyan)\(player)\(reset) to Hero Battle.")
    sleep(2)
    return player
}
