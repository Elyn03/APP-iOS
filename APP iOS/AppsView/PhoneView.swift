//
//  ContentView.swift
//  APP iOS
//
//  Created by EAP Céline Chhun Huy on 15/10/2024.
//

import SwiftUI

struct PhoneView: View {
    
    @StateObject var viewModel = MainViewModel()

    var body: some View {
        VStack {
            Spacer()
            VStack {
                Spacer()
            }
            .frame(width: 100, height: 100)
            .background(.red)
            
            VStack {
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
//                            .stroke(.black, lineWidth: 2)
                            .fill(.white)
                            .frame(maxWidth: .infinity, maxHeight: 70)
                        Text(viewModel.phoneNumber)
                            .foregroundStyle(AppParameters.color05)
                            .font(.system(size: 32))
                    }
                    VStack {
                        Image(systemName: "delete.left.fill")
                            .foregroundColor(AppParameters.color07) // Change the color of the symbol
                            .font(.system(size: 40))  // Change the size of the symbol
                            .onTapGesture {
                                viewModel.deleteNumber()
                            }
                    }
                    
                }
                .frame(width: 320, height: 60)
                
                VStack(spacing: 10) {
                    HStack(spacing: 10) {
                        KeyNumberView(keyNumber: "1")
                            .onTapGesture {
                                viewModel.numCompose(number: "1")
                            }
                        KeyNumberView(keyNumber: "2")
                            .onTapGesture {
                                viewModel.numCompose(number: "2")
                            }
                        KeyNumberView(keyNumber: "3")
                            .onTapGesture {
                                viewModel.numCompose(number: "3")
                            }
                    }
                    
                    HStack(spacing: 10) {
                        KeyNumberView(keyNumber: "4")
                            .onTapGesture {
                                viewModel.numCompose(number: "4")
                            }
                        KeyNumberView(keyNumber: "5")
                            .onTapGesture {
                                viewModel.numCompose(number: "5")
                            }
                        KeyNumberView(keyNumber: "6")
                            .onTapGesture {
                                viewModel.numCompose(number: "6")
                            }
                    }
                    
                    HStack(spacing: 10) {
                        KeyNumberView(keyNumber: "7")
                            .onTapGesture {
                                viewModel.numCompose(number: "7")
                            }
                        KeyNumberView(keyNumber: "8")
                            .onTapGesture {
                                viewModel.numCompose(number: "8")
                            }
                        KeyNumberView(keyNumber: "9")
                            .onTapGesture {
                                viewModel.numCompose(number: "9")
                            }
                    }
                    
                    HStack(spacing: 10) {
                        KeyNumberView(keyNumber: "*")
                            .onTapGesture {
                                viewModel.numCompose(number: "*")
                            }
                        KeyNumberView(keyNumber: "0")
                            .onTapGesture {
                                viewModel.numCompose(number: "0")
                            }
                        KeyNumberView(keyNumber: "#")
                            .onTapGesture {
                                viewModel.numCompose(number: "#")
                            }
                    }
                    
                    HStack(spacing: 10) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 50)
                                .fill(AppParameters.color03)
                                .frame(width: 90, height: 70)
                            Image(systemName: "phone.fill")
                                .font(.system(size: 40))
                                .foregroundColor(AppParameters.color05)
                        }
                    }
                }
            }
        }
    }
    
    func getNote() -> Int {
        Int.random(in: 0...20)
    }
}

#Preview {
    PhoneView()
}
