//
//  ChapterView.swift
//
//
//  Created by Luana Gerber on 24/04/24.
//

import SwiftUI

struct ChapterView: View {
    let chapter: Chapter
    
    @ObservedObject var controller: ChapterController
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .frame(width: 310, height: 380)
                .foregroundStyle(Color("newWhite"))
                .cornerRadius(10)
                .shadow(radius: 12)
                .overlay{Image("lines")
                        .opacity(0.75)
                    .clipped()}
            
            Rectangle()
                .frame(width: 250, height: 300)
                .foregroundColor(Color.orange.opacity(0.0))
                .overlay{
                    VStack{
                        
                        
                        Text(chapter.chapterText)
                            .multilineTextAlignment(.center)
                            .foregroundStyle(Color("newBlack"))
                            .font(.system(size: 20))
                            .lineSpacing(1)
                        
                        Image(chapter.chapterTitle)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Image(chapter.chapterImage[controller.currentImageIndex])
                            .resizable()
                            .aspectRatio(contentMode: .fit
                            )
                            .frame(height: 170)
                            .opacity(0.85)
                            .clipped()
                            .padding(.top, 25)
                            .onAppear{
                                controller.animateImage()
                            }
                        
                    }
                }
        }
        
    }
}

#Preview {
    ChapterView(chapter: predefinedChapters[0], controller: ChapterController(chapter: predefinedChapters[0]))
}
