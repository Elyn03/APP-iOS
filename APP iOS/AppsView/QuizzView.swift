//
//  MenuAppsView.swift
//  APP iOS
//
//  Created by EAP Céline Chhun Huy on 15/10/2024.
//

import SwiftUI

struct QuizzView: View {
    
    @StateObject var viewModel = ViewModel()
    
    @State var numberOfQuestion: Int = 0
    @State var isCorrect: Bool = false

    var body: some View {
        ScrollView {
            Text("Foxes Quizz")
                .font(.system(size: 48))
            
            ForEach(0 ..< numberOfQuestion, id: \.self) { index in
                VStack {
                    HStack {
                        Image(systemName: "questionmark.square.fill")
                            .foregroundColor(AppParameters.color05)
                            .font(.system(size: 24))
                        Text(viewModel.allQuestions[index])
                            .font(.system(size: 24))
                        Spacer()
                    }
                    
                    VStack {
                        HStack {
                            Image(systemName: "1.circle")
                            Text(viewModel.answers[index][0])
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        .padding([.leading, .trailing], 20)
                        .padding([.top, .bottom], 5)
                        .background(AppParameters.color03)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .foregroundStyle(AppParameters.color02)
                        .onTapGesture {
                            isCorrect = viewModel.correctTheQuestion(question: viewModel.allQuestions[index], answer: viewModel.answers[index][0])
                        }

                        HStack {
                            Image(systemName: "2.circle")
                            Text(viewModel.answers[index][1])
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        .padding([.leading, .trailing], 20)
                        .padding([.top, .bottom], 5)
                        .background(AppParameters.color03)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .foregroundStyle(AppParameters.color02)
                        .onTapGesture {
                            isCorrect = viewModel.correctTheQuestion(question: viewModel.allQuestions[index], answer: viewModel.answers[index][1])
                        }
                        
                        HStack {
                            Image(systemName: "3.circle")
                            Text(viewModel.answers[index][2])
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        .padding([.leading, .trailing], 20)
                        .padding([.top, .bottom], 5)
                        .background(AppParameters.color03)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .foregroundStyle(AppParameters.color02)
                        .onTapGesture {
                            isCorrect = viewModel.correctTheQuestion(question: viewModel.allQuestions[index], answer: viewModel.answers[index][2])
                        }
                    }
                    .padding()

                }
                .padding()
                .alert(isPresented: $isCorrect) {
                    Alert(title: Text("Correct"), message: Text("Correct answer"))
                }

            }
            
        }
        .onAppear() {
            numberOfQuestion = Int(viewModel.questions.count)
            viewModel.generateQuestions()
        }
    }
}

#Preview {
    QuizzView()
}
