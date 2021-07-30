//
//  ShowAlert.swift
//  ColorPaletteSUI
//
//  Created by SERGEY VOROBEV on 30.07.2021.
//

import SwiftUI

struct ShowAlert: ViewModifier {
    let isPresented: Binding<Bool>
    let title: String
    let message: String
    let buttonText: String
    
    func body(content: Content) -> some View {
        content.alert(isPresented: isPresented) {
            Alert(
                title: Text(title),
                message: Text(message),
                dismissButton: .default(
                    Text(buttonText)
                )
            )
        }
    }
}

extension View {
    func alert(isPresented: Binding<Bool>, title: String, message: String, buttonText: String) -> some View {
        modifier(ShowAlert(
                    isPresented: isPresented,
                    title: title,
                    message: message,
                    buttonText: buttonText
            )
        )
    }
}
