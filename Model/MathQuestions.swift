//
//  MathQuestions.swift
//
//
//  Created by Luana Gerber on 15/03/24.
//

import SwiftUI

struct Question {
    
    static var _shared: Question?

    let calculation : String
    let answer : Int
    
    init(c: String, a: Int) {
        calculation = c
        answer = a
    }
    
//
//    func isAnswerCorrect(_ userAnswer: String) -> Bool {
//        guard let intAnswer = Int(userAnswer) else {
//            return false
//        }
//        
//        return intAnswer == self.answer
//    }
}

let predefinedQuestions: [Question] = [
    Question(c: "0*4", a: 0),
    Question(c: "8*6", a: 48),
    Question(c: "25*3", a: 75),
    Question(c: "600*2", a: 1200),
    Question(c: "4+3*2", a: 10),
    Question(c: "50/2+3", a: 28),
    Question(c: "7+8*0", a: 7),
    Question(c: "9+9/9", a: 10),
    Question(c: "10000/4", a: 2500),
    Question(c: "90/3+4", a: 34),
    Question(c: "100*3+4", a: 304),
    Question(c: "2,5*8+7", a: 27),
    Question(c: "231-7+2", a: 226),
    Question(c: "250*3+35", a: 785),
    Question(c: "-4+5*5+1", a: 22),
    Question(c: "250*4-130", a: 870),
    Question(c: "-7+9*3-2", a: 18)
]
