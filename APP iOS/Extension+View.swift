//
//  Extension+View.swift
//  APP iOS
//
//  Created by EAP Céline Chhun Huy on 16/10/2024.
//

import SwiftUI

extension View {
    
    func goldenFrame() -> some View {
        self
            .overlay(RoundedRectangle(cornerRadius: 5.0, style: .continuous).stroke(LinearGradient(colors: [.yellow, .brown, .yellow, .brown,.yellow, .yellow], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 5))
            .clipShape(RoundedRectangle(cornerRadius: 5.0, style: .continuous))
    }
    
}
