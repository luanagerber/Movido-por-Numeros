//
//  IntroPage.swift
//
//
//  Created by Luana Gerber on 02/06/24.
//

import SwiftUI

struct IntroPage: View {
    let intro: Intro
    @Binding var currentPage: Int
    @ObservedObject var controller: IntroController
    
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
                        Text(intro.introText)
                            .multilineTextAlignment(.center)
                            .foregroundStyle(Color("newBlack"))
                            .font(.system(size: 20))
                        
                        Image(intro.introImage[controller.currentImageIndex])
                            .resizable()
                            .aspectRatio(contentMode: .fit
                            )
                            .frame(height: 70)
                            .clipped()
                            .padding(.top, 6)
                            .onAppear{
                                controller.animateImage()
                            }
                    }
                }
        }
        
        
        HStack(alignment: .center) {
            
            Button(action: {
                currentPage += 1
            }, label: {
                Image("buttonInicio")
                    .resizable()
                    .frame(width: 230, height: 55)
                    .cornerRadius(10)
                    .shadow(radius: 12)
                    .overlay {Text(intro.introButtonTitle)
                            .multilineTextAlignment(.center)
                            .bold()
                        .foregroundStyle(Color("indigoBlue"))}
            })
            
        }
        .frame(height: 55.0)
        .foregroundStyle(Color("newBlack"))
        .padding(.top, 18.0)
        .padding(.bottom, 0)
        .font(.system(size: 18))
    }
}

#Preview {
    IntroPage(intro: predefinedIntro[1], currentPage: .constant(2), controller: IntroController(intro: predefinedIntro[1]))
}
