//
//  StoryPageView.swift
//
//
//  Created by Luana Gerber on 22/04/24.
//

import SwiftUI

struct StoryPageView: View {
    @State var userAnswer: String = ""
    @Binding var currentPage: Int
    @FocusState var isFocused: Bool
    
    let questionIndex: Int
    let storyIndex: Int
    
    @ObservedObject var controller: MathController
    
    var body: some View {
        ZStack {
            let question = predefinedQuestions[questionIndex]
            
            Image("backgroundPage")
                .resizable()
            
            VStack {
                TitleView()
                StoryView(story: predefinedStories[storyIndex], controller: StoryController(story: predefinedStories[storyIndex]))
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
        
    }
}

#Preview {
    StoryPageView(currentPage: .constant(0), questionIndex: 0, storyIndex: 5, controller: MathController(mathQuestion: Question(c: "", a: 0)))
}
