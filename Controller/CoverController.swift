//
//  CoverController.swift
//
//
//  Created by Luana Gerber on 09/07/24.
//

import SwiftUI

class CoverController: ObservableObject {
    let cover: Cover
    @Published var currentImageIndex = 0
    
    init(cover: Cover) {
        self.cover = cover
    }
    
    func animateImage() {
        Timer.scheduledTimer(withTimeInterval: 0.4, repeats: true) { _ in
            
            self.currentImageIndex += 1
            
            if self.currentImageIndex >= self.cover.coverImage.count {
                self.currentImageIndex = 0
            }
        }
        
    }
}


