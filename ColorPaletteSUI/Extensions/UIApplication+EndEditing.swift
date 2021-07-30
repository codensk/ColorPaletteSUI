//
//  UIApplication+EndEditing.swift
//  ColorPaletteSUI
//
//  Created by SERGEY VOROBEV on 31.07.2021.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
