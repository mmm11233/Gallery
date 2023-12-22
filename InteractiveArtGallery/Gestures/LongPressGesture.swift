//
//  LongPressGesture.swift
//  InteractiveArtGallery
//
//  Created by Mariam Joglidze on 22.12.23.
//

import SwiftUI

struct LongPressGestureComponent: View {
    @State private var scale = 1.0
    
    var body: some View {
        ImageComponent(image: "2")
            .scaleEffect(scale)
            .gesture(
                LongPressGesture(minimumDuration: 1)
                    .onEnded { _ in
                        scale /= 2
                        
                    }
            )
    }
}


#Preview {
    LongPressGestureComponent()
}
