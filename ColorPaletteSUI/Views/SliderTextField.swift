//
//  SliderTextField.swift
//  ColorPaletteSUI
//
//  Created by SERGEY VOROBEV on 30.07.2021.
//

import SwiftUI

struct SliderTextField: View {
    @Binding var value: Double
    @State private var showAlert = false

    var body: some View {
        TextField("Red", text: Binding(get: {
            "\(lround(self.value))"
        }, set: { newValue in
            if Validator.shared.validateColorValue(value: newValue) {
                self.value = Double(newValue)!
            } else {
                self.value = 0
                self.showAlert = true
            }
        }))
        .colorTextField()
        .alert(isPresented: $showAlert, title: "Ошибка", message: "Разрешено вводить только числа", buttonText: "OK")
    }
}

struct SliderTextField_Previews: PreviewProvider {
    static var previews: some View {
        SliderTextField(value: .constant(0))
    }
}
