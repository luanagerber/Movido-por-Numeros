//
//  StoryController.swift
//
//
//  Created by Luana Gerber on 09/07/24.
//

import SwiftUI

class StoryController: ObservableObject {
    let story: Story
    @Published var currentImageIndex = 0
    
    init(story: Story) {
        self.story = story
    }
    
    func animateImage() {
        Timer.scheduledTimer(withTimeInterval: 0.4, repeats: true) { _ in
            
            self.currentImageIndex += 1
            
            if self.currentImageIndex >= self.story.storyImage.count {
                self.currentImageIndex = 0
            }
        }
        
    }
}


