//
//  CoverView.swift
//
//
//  Created by Luana Gerber on 22/04/24.
//

import SwiftUI

struct CoverPageView: View {
    
    let cover: Cover
    @Binding var currentPage: Int
    @ObservedObject var controller: CoverController
    
    
    var body: some View {
        ZStack {
            
            Image("backgroundInicio")
                .resizable()
            
            Image(cover.coverImage[controller.currentImageIndex])
                .resizable()
                .aspectRatio(contentMode: .fill)
                .opacity(0.95)
                .frame(height: 400)
                .padding(.top, -200)
                .onAppear{
                    controller.animateImage()
                }
            
            // TITULO
            
            VStack {
                
                Image("tituloInicio")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 290)
                    .padding(.top, 190)
                
                
                Text(cover.coverText)
                    .foregroundStyle(Color("newWhite"))
                    .bold()
                    .padding(.top, 13.0)
                    .padding(.bottom, 32)
                
                Button(action: {
                    withAnimation {
                        currentPage += 1
                    }
                }, label: {
                    Image("buttonInicio")
                        .resizable()
                        .frame(width: 200, height: 55)
                        .cornerRadius(10)
                        .shadow(radius: 12)
                        .overlay {Text(cover.coverButtonTitle)
                                .multilineTextAlignment(.center)
                                .bold()
                            .foregroundStyle(Color("indigoBlue"))}
                })
            }.padding(.top, 180)
        }
        .ignoresSafeArea()
    }
    
}

#Preview {
    CoverPageView(cover: predefinedCover[0], currentPage: .constant(0), controller: CoverController(cover: predefinedCover[0]))
}
