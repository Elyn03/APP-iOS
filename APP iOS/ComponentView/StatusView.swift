//
//  StatusView.swift
//  APP iOS
//
//  Created by EAP Céline Chhun Huy on 17/10/2024.
//

import SwiftUI

struct StatusView: View {
    
    let title: String
    let progress: Int
    let icon: Image
    let color: Color
    let textColor: Color
    
    var body: some View {
        VStack {
            HStack {
                icon
                    .font(.system(size: 30))
                Text(title)
                    .fontWeight(.bold)
            }
            .padding([.top, .bottom], 10)
            Spacer()
            ZStack(alignment: .leading) {
                // Background bar
                RoundedRectangle(cornerRadius: 10)
                    .fill(AppParameters.color02.opacity(0.3))
                    .frame(height: 10)
                
                // Foreground bar (progress)
                RoundedRectangle(cornerRadius: 10)
                    .fill(AppParameters.color08)
                    .frame(width: CGFloat(progress), height: 10) // Dynamic width based on progress
            }
            .padding()
        }
        .frame(maxWidth: 150, maxHeight: 150)
        .padding(10)
        .background(color)
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .foregroundStyle(textColor)
    }
}

#Preview {
    StatusView(title: "Donation", progress: 60, icon: Image(systemName: "suit.heart.fill"), color: AppParameters.color01, textColor: AppParameters.color03)
}
