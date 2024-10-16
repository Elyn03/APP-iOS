//
//  MenuAppsView.swift
//  APP iOS
//
//  Created by EAP Céline Chhun Huy on 15/10/2024.
//

import SwiftUI

struct MenuAppsView: View {
    
    var body: some View {
        VStack {
            Text("MENU DES APPS")
            
            ForEach(availableApps.allCases, id: \.self) {
                nameApp in
                IconeView(image: Image("fox"), name: String(nameApp.rawValue))
            }
        }
    }
}

#Preview {
    MenuAppsView()
}
