//
//  ContentView.swift
//  InteractiveArtGallery
//
//  Created by Mariam Joglidze on 22.12.23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ScrollView{
            
            VStack {
                Text("Hello, in the Art Gallery!")
                    .font(.title)
                    .foregroundStyle(.purple)
                    .bold()
                LongPressGestureComponent()
                TapGestureComponent()
                dragOffsetGestureComponent()
                ComposingGesture()
                AnotherComposingGestureComponent()
                PinchGestureComponent()
                GestureCompositionView()
            }
            .padding()
        }
    }
}


#Preview {
    ContentView()
}
