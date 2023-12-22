//
//  SwiftUIView.swift
//  InteractiveArtGallery
//
//  Created by Mariam Joglidze on 22.12.23.
//

import SwiftUI

struct GestureCompositionView: View {
    
    @State private var rectangleOffset: CGSize = .zero

    var body: some View {
        VStack {
            ImageComponent(image: "7")
            .offset(rectangleOffset)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            self.rectangleOffset = value.translation
                        }
                        .onEnded { _ in
                            withAnimation {
                                self.rectangleOffset = .zero
                            }
                        }
                )

            Text("Drag the image")
        }
        .padding()
    }
}


#Preview {
    GestureCompositionView()
}
