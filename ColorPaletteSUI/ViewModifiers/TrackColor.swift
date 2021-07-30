//
//  TrackColor.swift
//  ColorPaletteSUI
//
//  Created by SERGEY VOROBEV on 30.07.2021.
//

import SwiftUI

struct TrackColor: ViewModifier {
    let color: Color
    
    func body(content: Content) -> some View {
        content.accentColor(color)
    }
}

extension Slider {
    func track(color: Color) -> some View {
        modifier(TrackColor(color: color))
    }
}
