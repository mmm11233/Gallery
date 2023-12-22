//
//  ComposingGesture.swift
//  InteractiveArtGallery
//
//  Created by Mariam Joglidze on 22.12.23.
//

import SwiftUI

struct ComposingGesture: View {
    @State private var scale: CGFloat = 1.0
    @State private var rotation: Angle = .degrees(0)
    @State private var isShowingText = false
    
    var body: some View {
        VStack {
            ImageComponent(image: "4")
                .gesture(
                    MagnificationGesture()
                        .onChanged { value in
                            self.scale = value.magnitude
                        }
                        .onEnded { _ in
                            self.scale = 1.0
                        }
                )
                .simultaneousGesture(
                    RotationGesture()
                        .onChanged { value in
                            self.rotation = value
                        }
                        .onEnded { _ in
                            self.rotation = .degrees(0)
                        }
                )
            
            if isShowingText {
                Text("Wow,Gesture works")
                    .font(.headline)
                    .foregroundColor(.blue)
            }
        }
        .onTapGesture {
            withAnimation {
                self.isShowingText.toggle()
            }
        }
        .padding()
    }
}




#Preview {
    ComposingGesture()
}
