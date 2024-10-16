//
//  MainViewModel.swift
//  APP iOS
//
//  Created by EAP Céline Chhun Huy on 15/10/2024.
//

import Foundation

class MainViewModel: ObservableObject {
    
    @Published var isValid = false
    @Published var usernameError: String = ""
    @Published var passwordError: String = ""
    
    @Published var phoneNumber: String = ""
    
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
    
    
    func numCompose(number: String) {
        phoneNumber = phoneNumber + number
    }
    
    func deleteNumber() {
        if !phoneNumber.isEmpty {  // Check if the string is not empty
            phoneNumber.removeLast()  // Remove the last character
        }
    }
    
}
