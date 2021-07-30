//
//  BackgroundViewStyle.swift
//  ColorPaletteSUI
//
//  Created by SERGEY VOROBEV on 30.07.2021.
//

import SwiftUI

struct BackgroundViewStyle: ViewModifier {
    var backgroundColor: Color
    
    func body(content: Content) -> some View {
        content.foregroundColor(backgroundColor)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 3)
                    .foregroundColor(.white)
            )
            .frame(maxWidth: .infinity, maxHeight: 170)
    }
}

extension View {
    func colorPreview(backgroundColor: Color) -> some View {
        modifier(
            BackgroundViewStyle(backgroundColor: backgroundColor)
        )
    }
}
