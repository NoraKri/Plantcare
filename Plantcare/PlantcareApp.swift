//
//  PlantcareApp.swift
//  Plantcare
//
//  Created by Mikail Andreassen on 07/07/2022.
//

import SwiftUI

@main
struct PlantcareApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            NavigationView {
                PlantsView(plant: Plant.sampleData)
            }
        }
    }
}
