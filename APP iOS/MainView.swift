//
//  MainView.swift
//  APP iOS
//
//  Created by EAP Céline Chhun Huy on 15/10/2024.
//

import SwiftUI

struct MainView: View {
    
    
    @State var username: String = ""
    @State var password: String = ""
    
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        NavigationStack {
            Spacer()
            if !viewModel.isValid {
                VStack {
                    Text("Sign In")
                        .fontWeight(.bold)
                        .font(.system(size: 48, weight: .light, design: .serif))
                    
                    VStack {
                        VStack {
                            Label("Username", systemImage: "bolt.fill")
                            TextField(
                                "Username",
                                text: $username
                            )
                            .disableAutocorrection(true)
                        }
                        .textFieldStyle(.roundedBorder)
                        
                        VStack {
                            Label("Password", systemImage: "bolt.fill")
                            TextField(
                                "Password",
                                text: $password
                            )
                            .disableAutocorrection(true)
                        }
                        .textFieldStyle(.roundedBorder)
                    }
                    .padding(20)
                    
                    Button {
                        viewModel.checkConnection(login: username, password: password)
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 30)
                                .fill(AppParameters.color04)
                                .stroke(.black, lineWidth: 1)
                                .frame(width: 150, height: 40)
                                
                            Text("Sign in")
                        }
                    }
                }
            } else {
                NavigationLink(destination: MenuAppsView()) {
                    Text("Menu")
//                    Button {
//                        viewModel.checkConnection(login: username, password: password)
//                    } label: {
//                        ZStack {
//                            RoundedRectangle(cornerRadius: 30)
//                                .fill(AppParameters.color04)
//                                .stroke(.black, lineWidth: 1)
//                                .frame(width: 150, height: 40)
//                                
//                            Text("Sign in")
//                        }
//                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.green)
        .padding(20)
    }
}

#Preview {
    MainView()
}
