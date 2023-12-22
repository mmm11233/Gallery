//
//  dragOffsetGesture.swift
//  InteractiveArtGallery
//
//  Created by Mariam Joglidze on 22.12.23.
//

import SwiftUI

struct dragOffsetGestureComponent: View {
    @State private var dragOffset = CGSize.zero
    
    var body: some View {
        VStack{
            ImageComponent(image: "3")
                .offset(dragOffset)
                .gesture(
                    DragGesture()
                        .onChanged { gesture in
                            dragOffset = gesture.translation
                        }
                        .onEnded { gesture in
                            dragOffset = .zero
                        }
                )
        }
    }
}


#Preview {
    dragOffsetGestureComponent()
}
