//
//  BackgroundView.swift
//  ColorPaletteSUI
//
//  Created by SERGEY VOROBEV on 30.07.2021.
//

import SwiftUI

struct BackgroundView: View {    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color("StartColor"), Color("EndColor")]), startPoint: .top, endPoint: .bottom)
            .onTapGesture {
                endEditing()
            }
    }
    
    private func endEditing() {
        UIApplication.shared.endEditing()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
