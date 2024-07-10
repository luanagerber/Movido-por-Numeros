//
//  NavigationView.swift
//
//
//  Created by Luana Gerber on 22/04/24.
//

import SwiftUI

struct NavigationView: View {
    @Binding var currentPage: Int
    let canGoToNextPage: Bool
    
    var body: some View {
        HStack(alignment: .center, spacing: 65.0) {
            Button(action: {
                currentPage -= 1
            }, label: {
                Image("buttonBack")
                    .resizable()
                    .scaledToFit()
                
            })
            
            Text("Pág. " + String(currentPage))
            
            Button(action: {
                currentPage += 1
            }, label: {
                Image("buttonNext")
                    .resizable()
                    .scaledToFit()
                
            }).disabled(!canGoToNextPage)
                .opacity(canGoToNextPage ? 1 : 0.4)
        }
        .frame(height: 25.0)
        .foregroundStyle(Color("newBlack"))
        .padding(.top, 100.0)
        .font(.system(size: 18))
    }
}


#Preview {
    NavigationView(currentPage: .constant(0), canGoToNextPage: true)
}

#Preview {
    NavigationView(currentPage: .constant(0), canGoToNextPage: false)
}
