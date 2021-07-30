//
//  ColorSlider.swift
//  ColorPaletteSUI
//
//  Created by SERGEY VOROBEV on 30.07.2021.
//

import SwiftUI

struct ValueSlider: View {
    var trackColor: Color = .red
    
    @Binding var value: Double
    
    var body: some View {
        Slider(value: $value, in: 0...255, step: 1)
            .track(color: trackColor)
    }
}

struct ValueSlider_Previews: PreviewProvider {
    static var previews: some View {
        ValueSlider(value: .constant(0))
    }
}
