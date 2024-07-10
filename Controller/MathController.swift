//
//  MathController.swift
//  
//
//  Created by Luana Gerber on 09/07/24.
//

import Foundation

class MathController: ObservableObject {

    let mathQuestion: Question
    @Published var questionAnswer = 0
    
    init(mathQuestion: Question) {
        self.mathQuestion = mathQuestion
    }
    
    func isAnswerCorrect(_ userAnswer: String) -> Bool {
        guard let intAnswer = Int(userAnswer) else {
            return false
        }
        
        return intAnswer == mathQuestion.answer
    }

}
