//
//  DataController.swift
//  APP iOS
//
//  Created by EAP Céline Chhun Huy on 15/10/2024.
//

import Foundation

class DataController {
    
    static let registeredUsers: [String: String] = [
        "0": "0",
        "Jean": "1234",
        "Julie": "5678"
    ]
    
    static let registeredContacts: [String: Int] = [
        "Jean": 0768084865,
        "Paul": 0796548552,
        "Lila": 0708559438,
        "Steph": 0700000000
    ]
    
    static var recentsCall: [[String]] = [
        [ "0758876548", "18 Sep., 09:22", "incoming" ],
        [ "Jean", "12 Aug., 11:52", "outgoing" ],
        [ "0768084865", "29 Jul., 15:14", "missed" ],
        [ "Lila", "29 Jul., 10:00", "incoming" ],
    ]
    
    static let questionsQuizz: [String: String] = [
        "How fast they can run?": "72km for h",
        "How many years can they live?": "They live for 3 and 4 years",
        "What are the baby foxes called?": "Foxes cubs",
        "What is the diet of desert foxes?": "Omnivore",
        "Where do arctic foxes live?": "at the North Pole and elsewhere"
    ]
    
    static let answersQuizz: [[String]] = [
        [ "72km for h", "70km for h", "77km for h" ],
        [ "They live 10 years", "They live for 5 and 7 years", "They live for 3 and 4 years" ],
        [ "Little foxes", "Foxes cubs", "Baby foxes" ],
        [ "Carnibor", "Omnivore", "Ervivorous" ],
        [ "In the North Pole", "At the North Pole and elsewhere", "In the woods" ]
    ]
    
}
