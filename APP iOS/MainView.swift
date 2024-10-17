//
//  MainView.swift
//  APP iOS
//
//  Created by EAP Céline Chhun Huy on 15/10/2024.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = ViewModel()
    
    @State var username: String = ""
    @State var password: String = ""
    @State var alert: Bool = false

    @State var donCash: Int = 50
    @State var contributionCash: Int = 80
    @State var playCash: Int = 70
    @State var other: Int = 40
    
    var body: some View {
        NavigationStack {
            if !viewModel.isValid {
                VStack {
                    Spacer()
                    VStack {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Sign In")
                                    .fontWeight(.bold)
                                    .font(.system(size: 48, weight: .light, design: .serif))
                                Text("Sign in to your registered account")
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
                                        .foregroundStyle(AppParameters.color07)
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
                                        .foregroundStyle(AppParameters.color07)
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
                                        .fill(AppParameters.color03)
                                        .frame(width: 125, height: 40)
                                        .shadow(color: AppParameters.color04.opacity(0.5), radius: 5, x: 5, y: 5)

                                    Text("Sign in")
                                        .foregroundColor(AppParameters.color02)
                                }
                        }
                    }
                    .padding(24)
                    .alert(isPresented: $alert) {
                        Alert(title: Text("Alert"), message: Text("Entrer un login"))
                    }
                    Spacer()
                }
                .background(
                    ZStack { // Stack the image and gradient together
                        Image("blob") // Your background image asset
                            .resizable()
                            .scaledToFill()
                            .frame(height: 500) // Restrict the height to only show at the top
                            .clipped() // Clips the image to avoid overflow

                        LinearGradient(
                            gradient: Gradient(colors: [
                                AppParameters.color01,
                                AppParameters.color08
                            ]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                        .edgesIgnoringSafeArea(.all) // Ensure gradient covers entire screen
                    }
                )

            } else {
                VStack(alignment: .leading) {
                    VStack(alignment: .leading, spacing: 50) {
                        VStack(alignment: .leading) {
                            Text("Welcome back \(username)!")
                                .fontWeight(.bold)
                                .font(.system(size: 32, weight: .light, design: .serif))
                                .foregroundStyle(AppParameters.color05)
                            Text("Good Morning")
                                .font(.system(size: 24, weight: .light, design: .serif))
                                .foregroundStyle(AppParameters.color04)
                        }
                        Spacer()
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Status")
                                .font(.system(size: 24, weight: .light))
                            HStack(spacing: 20) {
                                StatusView(title: "Donation", progress: donCash, icon: Image(systemName: "suit.heart.fill"), color: AppParameters.color01, textColor: AppParameters.color03)
                                StatusView(title: "ASPAS contribution", progress: contributionCash, icon: Image(systemName: "pawprint.fill"), color: AppParameters.color03, textColor: AppParameters.color01)

                            }
                            HStack(spacing: 20) {
                                StatusView(title: "Pool ", progress: playCash, icon: Image(systemName: "eurosign.circle.fill"), color: AppParameters.color03, textColor: AppParameters.color01)
                                StatusView(title: "Donation", progress: other, icon: Image(systemName: "suit.heart.fill"), color: AppParameters.color03, textColor: AppParameters.color01)

                            }
                        }
                        
                        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
                            Image(systemName: "rectangle.portrait.and.arrow.right")
                                .font(.system(size: 25))
                                .foregroundColor(AppParameters.color07)
                            Text("Log out")
                                .padding(10)
                                .foregroundColor(AppParameters.color07)
                        }
                        .frame(maxWidth: .infinity)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(AppParameters.color07, lineWidth: 1)
                        )
                        .onTapGesture {
                            viewModel.logOut()
                        }
                    }
                    .padding(20)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    HStack(alignment: .center, spacing: 10) {
                        ForEach(availableApps.allCases, id: \.self) {
                            nameApp in
                            NavigationLink(destination: nameApp.appView) {
                                IconeView(image: nameApp.image, name: nameApp.title)
                            }
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: 75)
                    .background(AppParameters.color03)
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    MainView()
}
