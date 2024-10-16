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
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Text("\(name)")
        }
        .padding(10)
        .background(.yellow)
        .frame(width: 100, height: 100)
    }
}

#Preview {
    IconeView(image: Image("fox"), name: "Fox")
}
