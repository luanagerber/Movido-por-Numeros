//
//  TitleView.swift
//
//
//  Created by Luana Gerber on 22/04/24.
//

import SwiftUI

struct TitleView: View {
    
    var body: some View {
        Image("tituloPage")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 255)
            .padding(.top, 55)
            .padding(.bottom, 35)
    }
}

#Preview {
    TitleView()
}
