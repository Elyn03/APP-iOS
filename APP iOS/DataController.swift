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
        "Where do arctic foxes live?": "at the North Pole and elsewhere",
        "How many years can they live?": "They live for 3 and 4 years",
        "What is the diet of desert foxes?": "Omnivore",
        "What are the baby foxes called?": "Foxes cubs",
        "How fast they can run?": "72km for h"
    ]
    
    static let answersQuizz: [[String]] = [
        [ "In the North Pole", "At the North Pole and elsewhere", "In the woods" ],
        [ "They live 10 years", "They live for 5 and 7 years", "They live for 3 and 4 years" ],
        [ "Carnibor", "Omnivore", "Ervivorous" ],
        [ "Little foxes", "Foxes cubs", "Baby foxes" ],
        [ "72km for h", "70km for h", "77km for h" ]
    ]
    
}
