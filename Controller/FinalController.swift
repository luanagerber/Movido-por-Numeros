//
//  FinalController.swift
//
//
//  Created by Luana Gerber on 09/07/24.
//

import SwiftUI

class FinalController: ObservableObject {
    let final: Final
    @Published var currentImageIndex = 0
    
    init(final: Final) {
        self.final = final
    }
    
    func animateImage() {
        Timer.scheduledTimer(withTimeInterval: 0.4, repeats: true) { _ in
            
            self.currentImageIndex += 1
            
            if self.currentImageIndex >= self.final.finalImage.count {
                self.currentImageIndex = 0
            }
        }
        
    }
}


