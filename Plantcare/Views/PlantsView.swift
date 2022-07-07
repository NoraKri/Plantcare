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
                CardView(plant: plant)
            }
        }
    }
}

struct PlantsView_Previews: PreviewProvider {
    static var previews: some View {
        PlantsView(plant: Plant.sampleData)
    }
}
