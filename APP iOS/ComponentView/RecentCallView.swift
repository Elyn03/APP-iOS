//
//  RecentCallView.swift
//  APP iOS
//
//  Created by EAP Céline Chhun Huy on 17/10/2024.
//

import SwiftUI

struct RecentCallView: View {

    @StateObject var viewModel = ViewModel()

    let name: String
    let date: String
    let type: String

    var body: some View {
        HStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 30, height: 30)
            VStack(alignment: .leading) {
                Text(name)
                Text(date)
            }
            Spacer()
            Image(systemName: "phone.fill")
                .font(.system(size: 30))
                .foregroundColor(AppParameters.color05)
        }
        .frame(maxWidth: .infinity, maxHeight: 100)
        .padding(20)
        .background(AppParameters.color03)
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .foregroundStyle(AppParameters.color02)
    }
}

#Preview {
    RecentCallView(name: "Jean", date: "22/02/2002", type: "outgoing")
}
