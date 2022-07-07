//
//  CardView.swift
//  Plantcare
//
//  Created by Mikail Andreassen on 07/07/2022.
//

import SwiftUI

struct CardView: View {
    let plant : Plant
    
    var body: some View {
        HStack() {
            VStack(alignment: .leading) {
                Text(plant.name)
                    .font(.headline)
                Spacer()
                
                HStack{
                    Label("Watered \(plant.lastWatered) day(s) ago", systemImage: "drop").foregroundColor(.secondary)
                    Spacer()
                    if plant.hasPest{
                        Text("Has pests")
                            .foregroundColor(.red)
                            .padding(.trailing, 20)
                    }
                    else{
                        Text("Healthy")
                            .foregroundColor(.green)
                            .padding(.trailing, 20)
                    }
                        
                }
                .font(.caption)
            }
            .padding()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var plant = Plant.sampleData[0]
    static var previews: some View {
        CardView(plant: plant)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
