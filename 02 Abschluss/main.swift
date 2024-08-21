//
//  main.swift
//  02 Abschluss
//
// 
//

import Foundation

let warrior = Warrior(name: "\(blue)Player Arthas\(reset)", baseAtk: 70, baseDef: 30)
let fireMage = FireMage(name: "\(yellow)Player Gandalf\(reset)", baseAtk: 90, baseDef: 20)
let priest = Priest(name: "\(magenta)Player Ulf\(reset)", baseAtk: 60, baseDef: 10)
let druid = Druid(name: "\(green)Player Ugos\(reset)", baseAtk: 60, baseDef: 10)

let warriorNpc = Warrior(name: "\(blue)NPC Arthas\(reset)", baseAtk: 70, baseDef: 30)
let fireMageNpc = FireMage(name: "\(yellow)NPC Gandalf\(reset)", baseAtk: 90, baseDef: 20)
let priestNpc = Priest(name: "\(magenta)NPC Ulf\(reset)", baseAtk: 60, baseDef: 10)
let druidNpc = Druid(name: "\(green)NPC Ugos\(reset)", baseAtk: 60, baseDef: 10)


let enemyButcher = OrcButcher(name: "\(red)Grull the Butcher\(reset)", baseAtk: 40, baseDef: 20)
let enemyCultist = OrcCultist(name: "\(red)Cultist Thrall\(reset)", baseAtk: 50, baseDef: 12)
let enemyVillain = UndeadVillain(name: "\(red)Crix the Shadow\(reset)", baseAtk: 55, baseDef: 9)
let enemyWitcher = UndeadWitcher(name: "\(red)Witcher Zaros\(reset)", baseAtk: 60, baseDef: 14)

// Items zum Auswählen
let items: [Inventory] = [sword, schild, healPotion, schildPotion]


rpgStart2()

