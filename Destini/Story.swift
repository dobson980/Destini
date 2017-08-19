//
//  Story.swift
//  Destini
//
//  Created by Tom Dobson on 8/16/17.
//  Copyright © 2017 Dobson Studios. All rights reserved.
//

import Foundation

enum Story {
    
    case awaken
    case stream
    case light
    case bear
    case berries
    case radio
    case road
    case left
    case right
    case phone
    case mom
    case wife
    case car

}

// MARK: - Story Text

extension Story {
    
    var text: String {
        
        switch self {
            
        //Init Story
        case .awaken: return "You slowly open your eyes... your in what appears to be a forest. There is an aching pain in your side, and a ringing in your left ear. Its dark, and freezing cold. You see a light in the distance... and a quiet river a few yards to your rear."
        
        //Scenario Set 1
            
        //Set 1 Case 1
        case .stream: return "You follow the river for what seems like hours... you are soon overcome with hunger; as if you haven't eaten in days. There is a bush near a tree with what looks to be berries."
            //Scenario Case 1 Outcomes
            case .berries: return "You eat some berries. Your hands soon begin to shake, and your stomach aches. You start to feel light headed. You sit down near a tree and slowly slip away into darkness."
            case .bear: return "You continue to follow the river, hoping to find some sign of civilization. A growl emerges... a bear attacks you. You try to fight back but are quickly over powered. You lose conciousness and slip into darkness."
            
        //Set 1 Case 2
        case .light: return "You follow the light. It seems far but you make good time and get closer to what appears to be a house. You hear AC/DC blasting on a stereo. To your left there is county road about 100 yards away."
            //Scenario Case 2 Outcomes
            case .radio: return "You continue to head towards the house. Some yells \"get off my property!\". You hear a loud 'bang'. A sharp pain strikes your side. You have been shot, it looks pretty bad. You collapse, lose conciousness and slip into darkness."
            case .road: return "You approach the road. Its only one lane each way, with no cars on it. Its starting to get colder..."
            
        //You survived round 1
            
        //Scenario Set 2
            
        //Set 1 Case 1
                case .left: return "You follow the road to the left. You walk for several hours. Soon you cant feel your feet, nor your hands. You start to shake uncontrolably. Snow begins to fall. You cant go on. You collapse and slip into darkness."
            
                case .right: return "You go right on the road. After what seems like forever, you come across a gas station. It is abandonded. You see a phone against the far wall, and an abandoned car"

                    case .car: return "You search the car for keys. A snake was coiled up on the passenger seat. It lunges and bites you. Everything starts to spin. You black out and slip into darkness."

                    case .phone: return "You walk over to the phone and pick up the handset. Who do you call?"
            
                        case .mom: return "You call your mom. She has the police trace the line. You are rescued!"
                        case .wife: return "You wife answers... she says shes on the way. You sit around the gas station for a few hours... you realize you never told your wife where you were. Suddenly a car pulls up, a window rolls down. You hear a loud 'BANG'. You black out and slip into darkness"

        }
        
    }
    
}

// MARK: - Choice One

extension Story {
    
    var choiceOne: (buttonText: String? ,nextStory: Story) {
        
        switch self {
            
        case .awaken: return ("Follow the river.", .stream)
        case .stream: return ("You cant risk eating unknown fruit, keep following the river.", .bear)
        case .light: return ("Follow the sound of the radio.", .radio)
        case .bear: return ("Play Again", .awaken)
        case .berries: return ("Play Again", .awaken)
        case .radio: return ("Play Again", .awaken)
        case .road: return ("Follow the road to the left.", .left)
        case .left: return ("Play Again", .awaken)
        case .right: return ("Oh a phone! Best call for help!", .phone)
        case .phone: return ("I should call my Mom!", .mom)
        case .mom: return ("Play Again", .awaken)
        case .wife: return ("Play Again", .awaken)
        case .car: return ("Play Again", .awaken)
            
        }
        
    }
    
}

// MARK: - Choice Two

extension Story {
    
    var choiceTwo: (buttonText: String? ,nextStory: Story) {
        
        switch self {
            
        case .awaken: return ("Head towards the light.", .light)
        case .stream: return ("Your starving, eat some berries.", .berries)
        case .light: return ("Better not trespass, head towards the road.", .road)
        case .bear: return ("NA", .awaken)
        case .berries: return ("NA", .awaken)
        case .radio: return ("NA", .awaken)
        case .road: return ("Follow the road to the right.", .right)
        case .left: return ("NA", .awaken)
        case .right: return ("The car is in good shape, maybe the keys are in it", .car)
        case .phone: return ("I should call my Wife!", .wife)
        case .mom: return ("NA", .awaken)
        case .wife: return ("NA", .awaken)
        case .car: return ("NA", .awaken)

            
            
        }
        
    }
    
}



