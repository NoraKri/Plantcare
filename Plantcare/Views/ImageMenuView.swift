//
//  ImageMenu.swift
//  Plantcare
//
//  Created by Mikail Andreassen on 08/07/2022.
//

import SwiftUI

struct ImageMenuView: View {
    
    @State private var isShowPhotoLibrary = false
    @State private var isShowCamera = false
    @State var image = UIImage()

    
    var body: some View {
            VStack {
                Menu {
                    Button(action: {
                        self.isShowCamera = true
                    }){
                        Label("Take photo", systemImage: "camera")
                    }
                    Button(action: {
                        self.isShowPhotoLibrary = true
                    }){
                        Label("Browse gallery", systemImage: "photo")
                    }
                }
                label: {
                    Label("Add Image", systemImage: "photo.on.rectangle")
                }
            }
            .sheet(isPresented: $isShowPhotoLibrary){
                ImagePicker(sourceTyoe: .photoLibrary, selectedImage: self.$image)
            }
            .sheet(isPresented: $isShowCamera){
                ImagePicker(sourceTyoe: .camera, selectedImage: self.$image)
            }
        }
}

struct ImageMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ImageMenuView()
    }
}
