//
//  MathView.swift
//
//
//  Created by Luana Gerber on 22/04/24.
//

import SwiftUI

struct MathView: View {
    @Binding var userAnswer: String
    @ObservedObject var controller: MathController

    var question: Question
    
    var body: some View {
        
        
        HStack(spacing: 18.0){
            Text(question.calculation)
                .fontWeight(.semibold)
                .lineLimit(1)
                .foregroundStyle(Color("newWhite"))
                .font(.system(size: 18))
            
            Text("=")
                .fontWeight(.semibold)
                .lineLimit(1)
                .foregroundStyle(Color("newWhite"))
                .font(.system(size: 18))
            
            TextField("Resultado",
                      text: $userAnswer
            )
            .keyboardType(.numberPad)
            .frame(width: 100.0, height: 30.0)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .multilineTextAlignment(.center)
            .border((controller.isAnswerCorrect(userAnswer) ? Color.white.opacity(0.0) : Color.red.opacity(1.0)),
                    width: 4)
            .cornerRadius(3.0)
            
        }.padding(.top, 40.0)
    }
}

#Preview {
    MathView(userAnswer: .constant("450"), controller: MathController(mathQuestion: Question(c: "15*30", a: 450)), question: Question(c: "15*30", a: 450))
}

#Preview {
    MathView(userAnswer: .constant("999"), controller: MathController(mathQuestion: Question(c: "15*30", a: 450)), question: Question(c: "15*30", a: 450))
}
