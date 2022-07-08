//
//  PlantsView.swift
//  Plantcare
//
//  Created by Mikail Andreassen on 07/07/2022.
//

import SwiftUI

struct PlantsView: View {
    let plant: [Plant]
    var body: some View {
        List{
            ForEach(plant) { plant in
                NavigationLink(destination: ContentView(plant: plant)) {
                    CardView(plant: plant)
                }
            }
        }
        .navigationTitle("Your plants")
        .toolbar{
            Button(action: {}){
                Image(systemName: "plus")
            }
        }
    }
}

struct PlantsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PlantsView(plant: Plant.sampleData)
        }
    }
}
