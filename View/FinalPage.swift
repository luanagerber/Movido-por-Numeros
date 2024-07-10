//
//  FinalPage.swift
//
//
//  Created by Luana Gerber on 02/06/24.
//

import SwiftUI

struct FinalPage: View {
    let final: Final
    @Binding var currentPage: Int
    @ObservedObject var controller: FinalController
    
    var body: some View {
        
        VStack{
            ZStack{
                Rectangle()
                    .frame(width: 310, height: 400)
                    .foregroundStyle(Color("newWhite"))
                    .cornerRadius(10)
                    .shadow(radius: 12)
                    .overlay{Image("lines")
                            .clipped()
                        .opacity(0.75)}
                
                VStack {
                    Rectangle()
                        .frame(width: 250, height: 100)
                        .foregroundColor(Color.orange.opacity(0.0))
                        .overlay{
                            Text(final.finalText)
                                .multilineTextAlignment(.center)
                                .foregroundStyle(Color("newBlack"))
                                .font(.system(size: 20))
                                .lineSpacing(1)
                        }
                        .padding(.bottom, 00)
                        .padding(.top, 30)
                    
                    Image(final.finalImage[controller.currentImageIndex])
                        .resizable()
                        .aspectRatio(contentMode: .fit
                        )
                        .frame(height: 200)
                        .padding(.top, 03)
                        .clipped()
                        .onAppear{
                            controller.animateImage()
                        }
                    
                    
                }
            }
            
            Button(action: {
                currentPage = 0
            }, label: {
                Image("buttonInicio")
                    .resizable()
                    .frame(width: 200, height: 55)
                    .cornerRadius(10)
                    .shadow(radius: 12)
                    .overlay {Text(final.finalButtonTitle)
                            .multilineTextAlignment(.center)
                            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                            .bold()
                        .foregroundStyle(Color("indigoBlue"))}
            }).padding(.top, 40)
                .padding(.bottom, 48)
        }
    }
}

#Preview {
    FinalPage(final: predefinedFinal[0], currentPage: .constant(2), controller: FinalController(final: predefinedFinal[0]))
}
