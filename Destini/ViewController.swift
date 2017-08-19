//
//  ViewController.swift
//  Destini
//
//  Created by Tom Dobson on 8/16/17.
//  Copyright © 2017 Dobson Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var choiceOneSelected: Bool?
    var choiceTwoSelected: Bool?
    var page: Page = Page(story: .awaken)
    
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateStory()
        roundChoiceButton()
        
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
    
                switch sender.tag {
                    case 1: choiceOneSelected = true
                    case 2: choiceTwoSelected = true
                    default: break
                }
        
        nextPage()
    
    }
    
    func updateStory() {
    
        if page.choiceTwo.buttonText == "NA" {
            
            bottomButton.isHidden = true
            storyTextView.text = page.story.text
            topButton.setTitle(page.choice.buttonText, for: .normal)
            
        } else {
            
            bottomButton.isHidden = false
            storyTextView.text = page.story.text
            bottomButton.setTitle(page.choiceTwo.buttonText, for: .normal)
            topButton.setTitle(page.choice.buttonText, for: .normal)
            
        }
        

    
    }
    
    func nextPage() {
        
        if choiceOneSelected == true {
            
            page = Page(story: page.choice.nextStory)
            updateStory()
            choiceOneSelected = false
            
        } else if choiceTwoSelected == true {
            
            page = Page(story: page.choiceTwo.nextStory)
            updateStory()
            choiceTwoSelected = false
            
        }
        
    }
    
    func roundChoiceButton() {
        
        bottomButton.round()
        topButton.round()
        
    }

}

