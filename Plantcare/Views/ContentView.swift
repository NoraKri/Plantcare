//
//  ContentView.swift
//  Plantcare
//
//  Created by Mikail Andreassen on 07/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading){
            Rectangle()
                .fill(.green)
                .frame(height: 150)
            VStack(alignment: .leading) {
                Text("Monstera Deliciosa")
                    .font(.title)
                Text("Placed in office")
                    .foregroundColor(.secondary)
            }
            .padding()
            
            HStack{
                Spacer()
                Circle()
                    .stroke(Color.blue, lineWidth: 5)
                    .frame(width: 70, height: 70)
                Spacer()
                Circle()
                    .stroke(Color.green, lineWidth: 5)
                    .frame(width: 70, height: 70)
                Spacer()
                Circle()
                    .stroke(Color.orange, lineWidth: 5)
                    .frame(width: 70, height: 70)
                Spacer()
            }
            .padding()
            .shadow(radius: 2)
            
            VStack{
                Text("Tasks")
                    .font(.title2)
                    .multilineTextAlignment(.leading)
                HStack{
                    Image(systemName: "drop")
                    Text("Water")
                        .font(.title3)
                    Spacer()
                    Image(systemName: "zzz")
                    Circle()
                        .stroke(lineWidth: 1)
                        .frame(width: 50, height: 50)
                        
                }
                .padding()
                
                HStack{
                    Image(systemName: "leaf")
                    Text("Fertilize")
                        .font(.title3)
                    Spacer()
                    Image(systemName: "zzz")
                    Circle()
                        .stroke(lineWidth: 1)
                        .frame(width: 50, height: 50)
                        
                }
                .padding()
                
                HStack{
                    Image(systemName: "pills")
                    Text("Treat")
                        .font(.title3)
                    Spacer()
                    Image(systemName: "zzz")
                    Circle()
                        .stroke(lineWidth: 1)
                        .frame(width: 50, height: 50)
                        
                }
                .padding()
            }
            .padding()
        }
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
