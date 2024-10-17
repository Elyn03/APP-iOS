//
//  QuizzViewModel.swift
//  APP iOS
//
//  Created by EAP Céline Chhun Huy on 17/10/2024.
//

import Foundation

class QuizzViewModel: ObservableObject {
    @Published var questions : [String] = []
    @Published var answers : [[String]] = [[]]
    
    func generateQuestions() {
        var questions: [String] = []
        for (key, _) in DataController.questionsQuizz {
            questions.append(key)
        }
        self.questions = questions
    }
    
    func generateAnswers() {
        answers = DataController.answersQuizz
    }
}
