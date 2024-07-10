//
//  IntroPageView.swift
//
//
//  Created by Luana Gerber on 02/06/24.
//

import SwiftUI

struct IntroPageView: View {
    @Binding var currentPage: Int
    let introIndex : Int
    
    var body: some View {
        ZStack {
            Image("backgroundPage")
                .resizable()
            
            VStack {
                TitleView()
                IntroPage(intro: predefinedIntro[introIndex], currentPage: $currentPage,  controller: IntroController(intro: predefinedIntro[introIndex]))
                NavigationView(currentPage: $currentPage, canGoToNextPage: true)
            }
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    IntroPageView(currentPage: .constant(1), introIndex: 0)
}
