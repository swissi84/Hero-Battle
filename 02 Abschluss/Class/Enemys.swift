//
//  Enemys.swift
//  02 Abschluss
//
//  Created by Eggenschwiler Andre on 13.08.24.
//

import Foundation

// Enemys  under Class

class OrcButcher: Characters {
    var schild:Bool
    var sword:Bool
    
    override init(name: String, baseAtk:Int, baseDef:Int) {
        self.schild = true
        self.sword = true
        super.init(name: name, baseAtk: baseAtk, baseDef: baseDef)
       
    }
    
    func shout() {
         baseDef += Int.random(in: 10...30)
         baseAtk += Int.random(in: 10...30)
    }
}


class UndeadVillain: Characters {
    var torch:Bool
    
    override init(name: String, baseAtk:Int, baseDef:Int) {
        self.torch = true
        super.init(name: name, baseAtk: baseAtk, baseDef: baseDef)
       
    }
}


class OrcCultist: Characters {
    var torch:Bool
   
    override init(name: String, baseAtk:Int, baseDef:Int){
        self.torch = true
        super.init(name: name, baseAtk: baseAtk, baseDef: baseDef)
       
    }
}



class UndeadWitcher: Characters {
    var boneShield:Bool
   
    override init(name: String, baseAtk:Int, baseDef:Int) {
        self.boneShield = true
        super.init(name: name, baseAtk: baseAtk, baseDef: baseDef)
      
    }
    
    func shieldSpell() {
        baseDef += Int.random(in: 10...20)
        baseAtk += Int.random(in: 10...20)
        
        if boneShield == true {
            baseDef += Int.random(in: 10...20)
        }
    }
}
