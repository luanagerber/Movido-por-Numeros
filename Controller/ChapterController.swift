//
//  ChapterController.swift
//
//
//  Created by Luana Gerber on 09/07/24.
//

import SwiftUI

class ChapterController: ObservableObject {
    let chapter: Chapter
    @Published var currentImageIndex = 0
    
    init(chapter: Chapter) {
        self.chapter = chapter
    }
    
    func animateImage() {
        Timer.scheduledTimer(withTimeInterval: 0.4, repeats: true) { _ in
            
            self.currentImageIndex += 1
            
            if self.currentImageIndex >= self.chapter.chapterImage.count {
                self.currentImageIndex = 0
            }
        }
        
    }
}


