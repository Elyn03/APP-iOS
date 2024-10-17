//
//  IconeView.swift
//  APP iOS
//
//  Created by EAP Céline Chhun Huy on 16/10/2024.
//

import SwiftUI

struct IconeView: View {
    
    let image: Image
    let name: String
    
    var body: some View {
        VStack(alignment: .center) {
            image
                .font(.system(size: 30))
                .foregroundStyle(AppParameters.color01)
            Text("\(name)")
                .foregroundStyle(AppParameters.color01)
        }
        .frame(maxWidth: 50)
        .padding(10)
    }
}

#Preview {
    IconeView(image: Image("fox"), name: "Fox")
}
