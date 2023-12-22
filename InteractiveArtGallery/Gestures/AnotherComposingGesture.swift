//
//  AnotherComposingGesture.swift
//  InteractiveArtGallery
//
//  Created by Mariam Joglidze on 22.12.23.
//

import SwiftUI

struct AnotherComposingGestureComponent: View {
    @GestureState private var offset: CGSize = .zero
    @State private var dragEnabled: Bool = false
    
    var body: some View {
        
        let longPressBeforeDrag = LongPressGesture(minimumDuration: 2.0)
            .onEnded( { _ in
                self.dragEnabled = true
            })
            .sequenced(before: DragGesture())
            .updating($offset) { value, state, transaction in
                
                switch value {
                    
                case .first(true):
                    print("Long press in progress")
                    
                case .second(true, let drag):
                    state = drag?.translation ?? .zero
                    
                default: break
                }
            }
            .onEnded { value in
                self.dragEnabled = false
            }
        
        return ImageComponent(image: "5")
            .frame(width: 280, height: 250)
            .background(dragEnabled ? Color.yellow : Color.green)
            .offset(offset)
            .gesture(longPressBeforeDrag)
    }
}


#Preview {
    AnotherComposingGestureComponent()
}
