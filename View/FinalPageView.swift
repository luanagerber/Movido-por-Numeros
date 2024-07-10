//
//  FinalPageView.swift
//
//
//  Created by Luana Gerber on 02/06/24.
//

import SwiftUI

struct FinalPageView: View {
    @Binding var currentPage: Int
    let finalIndex : Int
    
    var body: some View {
        ZStack {
            Image("backgroundInicio")
                .resizable()
            
            VStack {
                TitleView()
                
                FinalPage(final: predefinedFinal[finalIndex], currentPage: $currentPage, controller: FinalController(final: predefinedFinal[finalIndex]))
            }
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    FinalPageView(currentPage: .constant(1), finalIndex: 0)
}
