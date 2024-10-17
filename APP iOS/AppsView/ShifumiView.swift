//
//  CalculatorView.swift
//  APP iOS
//
//  Created by EAP Céline Chhun Huy on 16/10/2024.
//

import SwiftUI

struct ShifumiView: View {
    
    @StateObject var viewModel = ViewModel()
    @State var win: Bool = false

    var body: some View {
        VStack {
            HStack(spacing: 20) {
                ShifumiCardView(name: "Mi", image: Image(systemName: "scissors"), rotation: 75, color: AppParameters.color01)
                ShifumiCardView(name: "Fu", image: Image(systemName: "rectangle.fill"), rotation: 75, color: AppParameters.color01)
                ShifumiCardView(name: "Shi", image: Image(systemName: "circle.fill"), rotation: 75, color: AppParameters.color01)
            }
            
            Spacer()
            
            VStack {
                if !viewModel.symbolsIcons.isEmpty {
                    VStack(spacing: 20) {
                        Image(systemName: viewModel.symbolsIcons[1])
                            .font(.system(size: 75))
                            .rotationEffect(.degrees(75))
                            .foregroundColor(AppParameters.color01)
                        Text(viewModel.resultShifumi)
                            .foregroundStyle(AppParameters.color07)
                            .font(.system(size: 30))
                        Image(systemName: viewModel.symbolsIcons[0])
                            .font(.system(size: 75))
                            .rotationEffect(.degrees(-105))
                            .foregroundColor(AppParameters.color05)
                    }
                }
            }
            .frame(maxWidth: 300, maxHeight: 300)
            .padding(10)
            .background(AppParameters.color03)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            .foregroundStyle(AppParameters.color02)
            .alert(isPresented: $win) {
                Alert(title: Text("You won"), message: Text("50 cents has been add to your pool"))
            }
            
            Spacer()
            
            HStack(spacing: 20) {
                ShifumiCardView(name: "Shi", image: Image(systemName: "circle.fill"), rotation: -105, color: AppParameters.color05)
                    .onTapGesture {
                        win = false
                        viewModel.playShifumi(symbol: "Shi")
                        if viewModel.resultShifumi == "Winner" {
                            win = true
                        }}
                ShifumiCardView(name: "Fu", image: Image(systemName: "rectangle.fill"), rotation: -105, color: AppParameters.color05)
                    .onTapGesture {
                        win = false
                        viewModel.playShifumi(symbol: "Fu")
                        if viewModel.resultShifumi == "Winner" {
                            win = true
                        }}
                ShifumiCardView(name: "Mi", image: Image(systemName: "scissors"), rotation: -105, color: AppParameters.color05)
                    .onTapGesture {
                        win = false
                        viewModel.playShifumi(symbol: "Mi")
                        if viewModel.resultShifumi == "Winner" {
                            win = true
                        }
                    }
            }
        }
        .padding(20)
    }
}

#Preview {
    ShifumiView()
}
