import SwiftUI

struct ContentView: View {
    @State var currentPage = 0

    var body: some View {
        ZStack{
            
            TabView(selection: $currentPage) {
                CoverPageView(cover: predefinedCover[0], currentPage: $currentPage, controller: CoverController(cover: predefinedCover[0]))
                    .tag(0)
                
                IntroPageView(currentPage: $currentPage, introIndex: 0)
                    .tag(1)
                
                IntroPageView(currentPage: $currentPage, introIndex: 1)
                    .tag(2)
                
                ChapterPageView(currentPage: $currentPage, questionIndex: 0, chapterIndex: 0, controller: MathController(mathQuestion: predefinedQuestions[0]))
                    .tag(3)
                
                StoryPageView(currentPage: $currentPage, questionIndex: 1, storyIndex: 0, controller: MathController(mathQuestion: predefinedQuestions[1]))
                    .tag(4)
                
                StoryPageView(currentPage: $currentPage, questionIndex: 2, storyIndex: 1, controller: MathController(mathQuestion: predefinedQuestions[2]))
                    .tag(5)
                
                
                ChapterPageView(currentPage: $currentPage, questionIndex: 3, chapterIndex: 1, controller: MathController(mathQuestion: predefinedQuestions[3]))
                    .tag(6)
                
                StoryPageView(currentPage: $currentPage, questionIndex: 4, storyIndex: 2, controller: MathController(mathQuestion: predefinedQuestions[4]))
                    .tag(7)
                
                StoryPageView(currentPage: $currentPage,  questionIndex: 5, storyIndex: 3, controller: MathController(mathQuestion: predefinedQuestions[5]))
                    .tag(8)
                
                StoryPageView(currentPage: $currentPage,  questionIndex: 6, storyIndex: 4, controller: MathController(mathQuestion: predefinedQuestions[6]))
                    .tag(9)
                
                ChapterPageView(currentPage: $currentPage, questionIndex: 7, chapterIndex: 2, controller: MathController(mathQuestion: predefinedQuestions[7]))
                    .tag(10)
                
                StoryPageView(currentPage: $currentPage,  questionIndex: 8, storyIndex: 5, controller: MathController(mathQuestion: predefinedQuestions[8]))
                    .tag(11)
                
                StoryPageView(currentPage: $currentPage,  questionIndex: 9, storyIndex: 6, controller: MathController(mathQuestion: predefinedQuestions[9]))
                    .tag(12)
                
                StoryPageView(currentPage: $currentPage,  questionIndex: 10, storyIndex: 7, controller: MathController(mathQuestion: predefinedQuestions[10]))
                    .tag(13)
                
                ChapterPageView(currentPage: $currentPage, questionIndex: 11, chapterIndex: 3, controller: MathController(mathQuestion: predefinedQuestions[11]))
                    .tag(14)
                
                StoryPageView(currentPage: $currentPage,  questionIndex: 12, storyIndex: 8, controller: MathController(mathQuestion: predefinedQuestions[12]))
                    .tag(15)
                
                StoryPageView(currentPage: $currentPage,  questionIndex: 13, storyIndex: 9, controller: MathController(mathQuestion: predefinedQuestions[13]))
                    .tag(16)
                
                StoryPageView(currentPage: $currentPage,  questionIndex: 14, storyIndex: 10, controller: MathController(mathQuestion: predefinedQuestions[14]))
                    .tag(17)
                
                StoryPageView(currentPage: $currentPage,  questionIndex: 15, storyIndex: 11, controller: MathController(mathQuestion: predefinedQuestions[15]))
                    .tag(18)
                
                FinalPageView(currentPage: $currentPage, finalIndex: 0)
                    .tag(19)
                
                
            }.tabViewStyle(.page(indexDisplayMode: .never))
                .onAppear {
                    UIScrollView.appearance().isScrollEnabled = true
                }
                .edgesIgnoringSafeArea(.all)
                .navigationBarBackButtonHidden()
            
        }
        
        
    }
}
