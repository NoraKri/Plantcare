//
//  Plant.swift
//  Plantcare
//
//  Created by Mikail Andreassen on 07/07/2022.
//

import Foundation

class handler: ObservableObject{
    @Published var room = [String]()
}

struct Plant: Identifiable {
    let id: UUID
    var name: String
    var room: [String]
    var hasPest: Bool
    var lastWatered: Date
    var lastTreated: Date
    var lastFertilized: Date
    
    init(id: UUID = UUID(), name: String, room: [String], hasPest: Bool, lastWatered: Date, lastTreated: Date, lastFertilized: Date){
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
    struct Data {
        var name: String = ""
        var room: [String] = ["Living room", "Kitchen", "Entryway", "Bedroom", "Bathroom"]
        var hasPest: Bool = false
        var lastWatered: Date = Date.now
        var lastTreated: Date = Date.now
        var lastFertilized: Date = Date.now
    }
    
    var data: Data {
        Data(name: name, room: room, hasPest: hasPest, lastWatered: lastWatered, lastTreated: lastTreated, lastFertilized: lastFertilized)
    }
}

extension Plant {
    static let sampleData: [Plant] =
    [
        Plant(name: "Monstera Deliciosa", room: ["Living room"], hasPest: false, lastWatered: Date.now, lastTreated: Date.now, lastFertilized: Date.now),
        Plant(name: "Monstera Adansonii", room: ["Office"], hasPest: true, lastWatered: Date.now, lastTreated: Date.now, lastFertilized: Date.now),
        Plant(name: "Stromanthe Burle Maxii", room: ["Bedroom"], hasPest: true, lastWatered: Date.now, lastTreated: Date.now, lastFertilized: Date.now)
    ]
    
    
}
