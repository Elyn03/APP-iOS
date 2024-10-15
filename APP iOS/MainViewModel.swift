//
//  MainViewModel.swift
//  APP iOS
//
//  Created by EAP Céline Chhun Huy on 15/10/2024.
//

import Foundation

class MainViewModel: ObservableObject {
    
    @Published var variableAccessible = 2
    
    func checkConnection(login: String, password: String) -> Bool {
        DataController.registeredUsers[login, password]
    }
    
}
