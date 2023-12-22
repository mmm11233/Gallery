//
//  ImageComponent.swift
//  InteractiveArtGallery
//
//  Created by Mariam Joglidze on 22.12.23.
//

import SwiftUI

struct ImageComponent: View {
     var image: String
    
    var body: some View {
        
        Image(image)
            .resizable()
            .frame(width: 250, height: 200)
//            .scaledToFit()
//            .padding()
    }
}


#Preview {
    ImageComponent(image: "4")
}
