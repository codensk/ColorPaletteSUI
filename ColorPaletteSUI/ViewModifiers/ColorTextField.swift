//
//  ColorTextField.swift
//  ColorPaletteSUI
//
//  Created by SERGEY VOROBEV on 30.07.2021.
//

import SwiftUI

struct ColorTextField: ViewModifier {
    func body(content: Content) -> some View {
        content.keyboardType(.numberPad)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .multilineTextAlignment(.trailing)
            .frame(maxWidth: 60)
    }
}

extension TextField {
    func colorTextField() -> some View {
        modifier(ColorTextField())
    }
}
