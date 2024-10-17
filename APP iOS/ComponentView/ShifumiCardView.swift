//
//  ShifumiCardView.swift
//  APP iOS
//
//  Created by EAP Céline Chhun Huy on 17/10/2024.
//

import SwiftUI

struct ShifumiCardView: View {
    
    let name: String
    let image: Image
    let rotation: Double
    let color: Color
    
    var body: some View {
        VStack(spacing: 20) {
            image
                .font(.system(size: 50))
                .rotationEffect(.degrees(rotation))
                .foregroundColor(color)
            Text(name)
        }
        .frame(maxWidth: 80, maxHeight: 125)
        .padding(10)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(color, lineWidth: 2)
        )
    }
}

#Preview {
    ShifumiCardView(name: "Pierre", image: Image(systemName: "circle.fill"), rotation: -90, color: AppParameters.color01)
}
