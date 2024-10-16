//
//  MainView.swift
//  APP iOS
//
//  Created by EAP Céline Chhun Huy on 15/10/2024.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewModel()
    
    @State var username: String = ""
    @State var password: String = ""
    @State var alert: Bool = false
    
    var body: some View {
        NavigationStack {
            if !viewModel.isValid {
                VStack {
                    Spacer()
                    Image("blob")
                        .resizable()
                    VStack {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Sign In")
                                    .fontWeight(.bold)
                                    .font(.system(size: 48, weight: .light, design: .serif))
                                Text("Sing in to your registered account")
                                    .font(.system(size: 18, weight: .light, design: .serif))
                            }
                            Spacer()
                        }
                        
                        VStack {
                            VStack(alignment: .leading) {
                                Text("Username")
                                TextField(
                                    "Username",
                                    text: $username
                                )
                                .disableAutocorrection(true)
                                
                                if viewModel.usernameError.count > 0 {
                                    Text(viewModel.usernameError)
                                        .foregroundStyle(AppParameters.color05)
                                }
                            }
                            .textFieldStyle(.roundedBorder)
                            .padding(.top, 10)
                            .padding(.bottom, 10)
                            
                            VStack(alignment: .leading) {
                                Text("Password")
                                TextField(
                                    "Password",
                                    text: $password
                                )
                                .disableAutocorrection(true)
                                
                                if viewModel.passwordError.count > 0 {
                                    Text(viewModel.passwordError)
                                        .foregroundStyle(AppParameters.color05)
                                }
                            }
                            .textFieldStyle(.roundedBorder)
                            .padding(.top, 10)
                            .padding(.bottom, 10)
                            
                        }
                        .padding(.top, 25)
                        .padding(.bottom, 25)
                        
                        Button {
                            
                            viewModel.checkConnection(login: username, password: password)
                        } label: {
                            ZStack {
                                    // Apply gradient background to the RoundedRectangle
                                    RoundedRectangle(cornerRadius: 30)
                                        .fill(
                                            LinearGradient(
                                                gradient: Gradient(colors: [
                                                    AppParameters.color01,
                                                    AppParameters.color08
                                                ]),
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing
                                            )
                                        )
                                        .frame(width: 125, height: 40)
                                        .shadow(color: AppParameters.color04.opacity(0.5), radius: 5, x: 5, y: 5)

                                    Text("Sign in")
                                        .foregroundColor(AppParameters.color02)
                                }
                        }
                    }
                    .padding(16)
                    .alert(isPresented: $alert) {
                        Alert(title: Text("Alert"), message: Text("Entrer un login"))
                    }
                }
            } else {
                VStack {
                    ForEach(availableApps.allCases, id: \.self) {
                        nameApp in
                        NavigationLink(destination: nameApp.appView) {
                            IconeView(image: nameApp.image, name: nameApp.title)
                        }
                        .padding()
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(20)
    }
}

#Preview {
    MainView()
}
