//
//  Plant.swift
//  Plantcare
//
//  Created by Mikail Andreassen on 07/07/2022.
//

import Foundation

struct Plant: Identifiable {
    let id: UUID
    var name: String
    var room: String
    var hasPest: Bool
    var lastWatered: Int
    var lastTreated: Int
    var lastFertilized: Int
    
    init(id: UUID = UUID(), name: String, room: String, hasPest: Bool, lastWatered: Int, lastTreated: Int, lastFertilized: Int){
        self.id = id
        self.name = name
        self.room = room
        self.hasPest = hasPest
        self.lastWatered = lastWatered
        self.lastTreated = lastTreated
        self.lastFertilized = lastFertilized
    }
}

extension Plant {
    static let sampleData: [Plant] =
    [
        Plant(name: "Monstera Deliciosa", room: "Kontor", hasPest: false, lastWatered: 4, lastTreated: 0, lastFertilized: 21),
        Plant(name: "Monstera Adansonii", room: "Kontor", hasPest: true, lastWatered: 1, lastTreated: 1, lastFertilized: 7),
        Plant(name: "Stromanthe Burle Maxii", room: "Soverom", hasPest: true, lastWatered: 4, lastTreated: 3, lastFertilized: 21)
    ]
}
