//
//  IntroController.swift
//
//
//  Created by Luana Gerber on 09/07/24.
//

import SwiftUI

class IntroController: ObservableObject {
    let intro: Intro
    @Published var currentImageIndex = 0
    
    init(intro: Intro) {
        self.intro = intro
    }
    
    func animateImage() {
        Timer.scheduledTimer(withTimeInterval: 0.4, repeats: true) { _ in
            
            self.currentImageIndex += 1
            
            if self.currentImageIndex >= self.intro.introImage.count {
                self.currentImageIndex = 0
            }
        }
        
    }
}


