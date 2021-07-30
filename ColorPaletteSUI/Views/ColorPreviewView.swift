//
//  ColorPreviewView.swift
//  ColorPaletteSUI
//
//  Created by SERGEY VOROBEV on 30.07.2021.
//

import SwiftUI

struct ColorPreviewView: View {
    var backgroundColor: Color = .white

    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .colorPreview(backgroundColor: backgroundColor)
    }
}

struct ColorPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPreviewView()
    }
}
