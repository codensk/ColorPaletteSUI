//
//  Validator.swift
//  ColorPaletteSUI
//
//  Created by SERGEY VOROBEV on 30.07.2021.
//

final class Validator {
    static let shared = Validator()
    
    func validateColorValue(value: String) -> Bool {
        if let newValue = Int(value),
           (0...255).contains(newValue) {
            return true
        }
        
        return false
    }
    
    private init() { }
}
