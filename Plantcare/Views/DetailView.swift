//
//  DetailView.swift
//  Plantcare
//
//  Created by Mikail Andreassen on 08/07/2022.
//

import SwiftUI

struct DetailView: View {
    let plant: Plant
    
    var body: some View {
        List{
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(plant: Plant.sampleData[0])
        }
    }
}
