//
//  ContentView.swift
//  ColorPaletteSUI
//
//  Created by SERGEY VOROBEV on 30.07.2021.
//

import SwiftUI

struct ContentView: View {
    @State var red = 64.0
    @State var green = 212.0
    @State var blue = 3.0
    
    private var color: Color {
        return Color(red: red / 255, green: green / 255, blue: blue / 255)
    }
    
    var body: some View {
        ZStack {
            BackgroundView()
                .ignoresSafeArea()
            
            VStack(spacing: 50) {
                VStack {
                    ColorPreviewView(backgroundColor: color)
                }
                
                VStack {
                    ColorSlider(trackColor: .red, value: $red)
                    ColorSlider(trackColor: .green, value: $green)
                    ColorSlider(trackColor: .blue, value: $blue)
                }
                
                Spacer()
                
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
