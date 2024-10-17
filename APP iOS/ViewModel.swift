//
//  MainViewModel.swift
//  APP iOS
//
//  Created by EAP Céline Chhun Huy on 15/10/2024.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    
    @Published var recentCalls = DataController.recentsCall

    @Published var isValid = false
    @Published var usernameError: String = ""
    @Published var passwordError: String = ""
    
    @Published var phoneNumber: String = ""
    
    @Published var selectedSymbol: String = ""
    @Published var robotSelectedSymbol: String = ""
    @Published var resultShifumi: String = ""
    @Published var symbolsIcons: [String] = []
    
    @Published var allQuestions: [String] = []
    @Published var questions = DataController.questionsQuizz
    @Published var answers = DataController.answersQuizz

    // login page
    func checkConnection(login: String, password: String) {
        if let realPassword = DataController.registeredUsers[login] {
            print(realPassword, password)
            if realPassword == password {
                isValid = true
                passwordError = ""
            } else {
                isValid = false
                passwordError = "The password is wrong"
            }
            usernameError = ""
        } else {
            isValid = false
            usernameError = "The username does not exist"
        }
    }
    
    func logOut() {
        isValid = false
    }

    // phone page
    
    func numCompose(number: String) {
        phoneNumber = phoneNumber + number
    }
    
    func deleteNumber() {
        if !phoneNumber.isEmpty {  // Check if the string is not empty
            phoneNumber.removeLast()  // Remove the last character
        }
    }
    
    func callNumber(name: String, date: String, type: String) {
        let newName = searchContact(numberComposed: name)
        
        print(newName)
        
        DataController.recentsCall.insert([newName, date, type], at: 0)
        recentCalls = DataController.recentsCall
        phoneNumber = ""
    }
    
    func searchContact(numberComposed: String) -> String {
        for (name, number) in DataController.registeredContacts {
            print(numberComposed, number)
            if numberComposed == "0" + String(number) {
                return name
            }
        }
        return String(numberComposed)
    }
    
    func getTodayDatetime() -> String {
        // Get current date and time
        let currentDate = Date()
        
        // Initialize a date formatter to format the date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM, HH:mm" // Customize date format
        dateFormatter.locale = Locale(identifier: "fr_FR") // Set the locale (French in this case)
        
        return dateFormatter.string(from: currentDate)
    }
    
    // Shifumi
    
    func playShifumi(symbol: String) {
        let random = Int.random(in: 1...3)
        switch random {
        case 1:
            robotSelectedSymbol = "Shi"
        case 2:
            robotSelectedSymbol = "Fu"
        default:
            robotSelectedSymbol = "Mi"
            break
        }
        
        selectedSymbol = symbol
        
        print(selectedSymbol, robotSelectedSymbol)
        
        let winnerChoice: [String: String] = [
            "Shi": "Mi",
            "Fu": "Shi",
            "Mi": "Fu",
        ]
        
        if(selectedSymbol == robotSelectedSymbol) {
            resultShifumi = "Egality"
        } else {
            let symbol = winnerChoice[selectedSymbol]
            if symbol == robotSelectedSymbol {
                resultShifumi = "Winner"
            } else {
                resultShifumi = "Loser"
            }
        }
        
        symbolsIcons = [getSymboleIcon(symbole: selectedSymbol), getSymboleIcon(symbole: robotSelectedSymbol)]
        print(symbolsIcons)
        
    }
    
    func getSymboleIcon(symbole: String) -> String {
        switch symbole {
            case "Shi":
                return "circle.fill"
            case "Fu":
                return "rectangle.fill"
            default:
                return "scissors"
        }
    }
    
    // Quizz
    
    func generateQuestions() {
        print(questions)
        for (question, answer) in questions {
            print(question)
            allQuestions.append(question)
        }
        
        print(allQuestions)
        print(questions)
    }
    
    func correctTheQuestion(question: String, answer: String) -> Bool {
        print(question)
//        let rightAnswer = questions[question]
        
        return false
    }
}
