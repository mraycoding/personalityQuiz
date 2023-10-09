//
//  Question.swift
//  persolalityQuiz2
//
//  Created by Max Ray on 10/7/23.
//

import Foundation


struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}


struct Answer {
    var text: String
    var type: HolidayType
}

enum HolidayType: Character {
    case christmas = "🎄", halloween = "🎃", thanksgiving = "🦃", julyFourth = "🇺🇸"
    
    var definition: String {
        switch self {
        case .christmas:
            return "christmas"
            
        case .halloween:
            return " halloween"
            
        case .thanksgiving:
            return " thanksgiving"
            
        case .julyFourth:
            return "july forurh "
            
            
            
            
        
        }
    }
    
    
}
