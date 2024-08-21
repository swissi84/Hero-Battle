//
//  Class.swift
//  02 Abschluss
//
//  Created by Eggenschwiler Andre on 12.08.24.
//

import Foundation

//Heros under Class

class Warrior: Characters, BattleShout {
    var schildAndSword:Bool = false
    
    
    override init(name: String, baseAtk:Int, baseDef:Int) {
        self.schildAndSword = false
        super.init(name: name, baseAtk: baseAtk, baseDef: baseDef)
        
    }
    
    func battleShout() {
        print("\(name) Use Battle Shout")
    }
}

class FireMage: Characters, MagicSpell {
    var torch:Bool = false
    var magicFire:Bool = false
    
    
    override init(name: String, baseAtk:Int, baseDef:Int) {
        self.torch = false
        self.magicFire = false
        super.init(name: name, baseAtk: baseAtk, baseDef: baseDef)
        
    }
    
    func magicSpell() {
        print("\(name) Cast Magic Spell")
    }
}


class Priest: Characters, Heal {
    var torch:Bool = false
    var holy:Bool = false
    
    override init(name: String, baseAtk:Int, baseDef:Int) {
        self.torch = false
        self.holy = false
        super.init(name: name, baseAtk: baseAtk, baseDef: baseDef)
        
    }
    
    func heal() {
        print("\(name) healed self.")
    }
}
    

    class Druid: Characters, WoddenShield {
        var woddenShield:Bool = false
        
        override init(name: String, baseAtk:Int, baseDef:Int){
            self.woddenShield = false
            super.init(name: name, baseAtk: baseAtk, baseDef: baseDef)
            
        }
        
        func woddenShieldfunc() {
            print("\(name) Use Wodden Shild")
        }
    }
    
    

