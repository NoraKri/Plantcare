//
//  CameraView.swift
//  Plantcare
//
//  Created by Mikail Andreassen on 08/07/2022.
//

import SwiftUI

struct CameraView: View {
    var body: some View {
        ZStack{
            FrameView(image: nil)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
