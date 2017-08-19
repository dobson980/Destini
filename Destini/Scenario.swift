//
//  Scenario.swift
//  Destini
//
//  Created by Tom Dobson on 8/16/17.
//  Copyright © 2017 Dobson Studios. All rights reserved.
//

import Foundation



class Page {
    
    let story: Story
    let choice: (buttonText: String? ,nextStory: Story)
    let choiceTwo: (buttonText: String? ,nextStory: Story)

    init(story: Story) {
        self.story = story
        self.choice = story.choiceOne
        self.choiceTwo = story.choiceTwo
    }
    
}

