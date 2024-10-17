//
//  AppuieView.swift
//  APP iOS
//
//  Created by EAP Céline Chhun Huy on 16/10/2024.
//

import SwiftUI

struct KeyNumberView: View {
    
    @StateObject var viewModel = ViewModel()
    let keyNumber: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 50)
                .fill(AppParameters.color03)
                .frame(width: 100, height: 60)
            Text(keyNumber)
                .font(.system(size: 32))
                .foregroundStyle(AppParameters.color02)
        }
    }
}

#Preview {
    KeyNumberView(keyNumber: "1")
}
