//
//  AddPlantView.swift
//  Plantcare
//
//  Created by Mikail Andreassen on 09/07/2022.
//

import SwiftUI

struct AddPlantView: View {
    @State private var data = Plant.Data()
    @State private var newRoom = ""
    
    var body: some View {
        Form {
            Section() {
                TextField("Name", text: $data.name)
            }
            Section(header: Text("Select Room")){
                HStack {
                    Picker("Location", selection: $data.room){
                        ForEach(data.room, id: \.self){
                            Text($0)
                        }
                    }
                    .pickerStyle(.menu)
                }
            }
            Section(header: Text("Watering, fertilizing & pests")){
                DatePicker("Last watered on:", selection: $data.lastWatered, displayedComponents: [.date])
                    .datePickerStyle(.automatic)
                DatePicker("Last fertilized on:", selection: $data.lastFertilized, displayedComponents: [.date])
                    .datePickerStyle(.automatic)
            }
            
            Section(){
                
                ImageMenuView()
            }
        }
    }
}

struct AddPlantView_Previews: PreviewProvider {
    static var previews: some View {
        AddPlantView()
    }
}
