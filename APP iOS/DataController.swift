//
//  DataController.swift
//  APP iOS
//
//  Created by EAP Céline Chhun Huy on 15/10/2024.
//

import Foundation

class DataController {
//    struct StudentTest {
//        var name: String
//        var age: Int
//    }
    
    static let registeredUsers: [String: String] = [
        "0": "0",
        "Jean": "1234",
        "Julie": "5678"
    ]
    
    static let registeredContacts: [String: Int] = [
        "Jean": 0768084865,
        "Paul": 0796548552,
        "Lila": 0708559438
    ]
    
    static let recentsCall: [String: String] = [
        "Jean": "Monday",
        "0768084865": "Tuesday",
        "Lila": "Saturday",
        "0768084865": "Saturday"
    ]
    
//    func checkDico(dico: [String: StudentTest]) {
//        for element in dico {
//            print("\(element.key) s'appelle \(element.name) et a \(element.age)")
//        }
//    }
}
