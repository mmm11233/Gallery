//
//  RotationGesture.swift
//  InteractiveArtGallery
//
//  Created by Mariam Joglidze on 22.12.23.
//

import SwiftUI

struct TapGestureComponent: View {
    @State private var scale = 1.0
    
    
    var body: some View {
        ImageComponent(image: "1")
            .padding()
            .scaleEffect(scale)
            .gesture(
                TapGesture()
                    .onEnded { _ in
                        scale -= 0.1
                    }
            )
    }
}


#Preview {
    TapGestureComponent()
}
