//
//  ChapterPageView.swift
//
//
//  Created by Luana Gerber on 24/04/24.
//

import SwiftUI

struct ChapterPageView: View {
    
    @State var userAnswer: String = ""
    @Binding var currentPage: Int
    @FocusState var isFocused: Bool
    
    let questionIndex: Int
    let chapterIndex: Int
    
    @ObservedObject var controller: MathController
    
    var body: some View {
        ZStack {
            let question = predefinedQuestions[questionIndex]
            
            Image("backgroundPage")
                .resizable()
            
            VStack {
                TitleView()
                ChapterView(chapter: predefinedChapters[chapterIndex],  controller: ChapterController(chapter: predefinedChapters[chapterIndex]))
                MathView(userAnswer: $userAnswer, controller: MathController(mathQuestion: question), question: question)
                    .focused($isFocused)
                NavigationView(currentPage: $currentPage, canGoToNextPage: controller.isAnswerCorrect(userAnswer))
            }
        }
        .ignoresSafeArea()
        .keyboardResponsive()
        .onTapGesture {
            isFocused = false
        }
        
    }}

#Preview {
    ChapterPageView(currentPage: .constant(4), questionIndex: 1, chapterIndex: 1, controller: MathController(mathQuestion: Question(c: "", a: 0)))
}
