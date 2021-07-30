//
//  SliderValue.swift
//  ColorPaletteSUI
//
//  Created by SERGEY VOROBEV on 30.07.2021.
//

import SwiftUI

struct ColorTextValue: View {
    @Binding var value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(maxWidth: 45)
    }
}

struct SliderValue_Previews: PreviewProvider {
    static var previews: some View {
        ColorTextValue(value: .constant(0))
    }
}
