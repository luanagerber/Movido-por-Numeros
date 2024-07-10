//
//  StoryView.swift
//
//
//  Created by Luana Gerber on 22/04/24.
//

import SwiftUI

struct StoryView: View {
    let story: Story
    
    @ObservedObject var controller: StoryController
    
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
                        Text(story.storyText)
                            .multilineTextAlignment(.center)
                            .foregroundStyle(Color("newBlack"))
                            .font(.system(size: 20))
                            .lineSpacing(1)
                        
                        Image(story.storyImage[controller.currentImageIndex])
                            .resizable()
                            .aspectRatio(contentMode: .fit
                            )
                            .frame(height: 65)
                            .clipped()
                            .padding(.top, 4)
                            .onAppear{
                                controller.animateImage()
                            }
                    }
                }
        }.ignoresSafeArea()
        
    }
}

#Preview {
    StoryView(story: predefinedStories[6], controller: StoryController(story: predefinedStories[6]))
}
