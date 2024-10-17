//
//  AppParameters.swift
//  APP iOS
//
//  Created by EAP Céline Chhun Huy on 15/10/2024.
//

import Foundation
import SwiftUI

class AppParameters {
    
    // fox theme
    static let color01: Color = Color(red: 224/255, green: 122/255, blue: 95/255) // fox orange #E07A5F -> button
    static let color02: Color = Color(red: 61/255, green: 44/255, blue: 41/255) // earthy brown #3D2C29 -> text
    static let color03: Color = Color(red: 244/255, green: 225/255, blue: 210/255) // cream #F4E1D2 -> main bg or button text
    
    // nature theme
    static let color04: Color = Color(red: 129/255, green: 178/255, blue: 154/255) // forest green #81B29A -> text
    static let color05: Color = Color(red: 82/255, green: 121/255, blue: 111/255) // moss green #52796F -> main bg
    static let color06: Color = Color(red: 58/255, green: 80/255, blue: 107/255) // midnight blue #3A506B -> icon
    
    // dynamisme
    static let color07: Color = Color(red: 214/255, green: 40/255, blue: 40/255) // autumn leaf red #D62828 -> icon
    static let color08: Color = Color(red: 242/255, green: 204/255, blue: 143/255) // golden yellow #F2CC8F -> button text

}

enum availableApps: String {
    static let allCases: [availableApps] = [.home, .phone, .shifumi, .quizz]
    
    case shifumi = "Shifumi"
    case phone = "Phone"
    case home = "Home"
    case quizz = "Quizz"
    
    var image: Image {
        switch self {
            case .shifumi:
                return Image(systemName: "hand.raised")
            case .phone:
                return Image(systemName: "phone")
            case .quizz:
                return Image(systemName: "quote.bubble")
            default:
                return Image(systemName: "house")
        }
    }
    
    var title: String {
        switch self {
            case .shifumi:
                return "Shifumi"
            case .phone:
                return "Phone"
            case .quizz:
                return "Quizz"
            default:
                return "Home"
        }
    }
    
    @ViewBuilder var appView: some View {
        switch self {
            case .shifumi:
                ShifumiView()
            case .phone:
                PhoneView()
            case .quizz:
                QuizzView()
            default:
                MainView()
            }
        }
}
