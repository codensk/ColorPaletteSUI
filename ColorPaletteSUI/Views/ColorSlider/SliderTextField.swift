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
        TextField("", text: Binding(get: {
            "\(lround(self.value))"
        }, set: { newValue in
            guard !newValue.isEmpty else { return }
            
            if Validator.shared.validateColorValue(value: newValue) {
                self.value = Double(newValue)!
            } else {
                self.value = 0
                self.showAlert = true
            }
        }), onCommit:  {
            UIApplication.shared.endEditing()
        })
        .colorTextField()
        .alert(isPresented: $showAlert, title: "Ошибка", message: "Разрешено вводить только числа от 0 до 255", buttonText: "OK")
    }
}

struct SliderTextField_Previews: PreviewProvider {
    static var previews: some View {
        SliderTextField(value: .constant(0))
    }
}
