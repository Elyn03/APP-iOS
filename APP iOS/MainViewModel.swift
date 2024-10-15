//
//  MainViewModel.swift
//  APP iOS
//
//  Created by EAP Céline Chhun Huy on 15/10/2024.
//

import Foundation

class MainViewModel: ObservableObject {
    
    @Published var isValid = false
    
    func checkConnection(login: String, password: String) {
        if let realPassword = DataController.registeredUsers[login] {
            print(realPassword, password)
            if realPassword == password {
                isValid = true
            } else {
                isValid = false
            }
        } else {
            isValid = false
        }
    }
    
}
