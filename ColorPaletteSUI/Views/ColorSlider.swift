//
//  ColorSlider.swift
//  ColorPaletteSUI
//
//  Created by SERGEY VOROBEV on 30.07.2021.
//

import SwiftUI

struct ColorSlider: View {
    var trackColor: Color = .red
    
    @Binding var value: Double
    
    var body: some View {
        HStack {
            ColorTextValue(value: $value)
            
            ValueSlider(trackColor: trackColor, value: $value)
            
            SliderTextField(value: $value)
        }
    }
}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ColorSlider(value: .constant(0))
    }
}
