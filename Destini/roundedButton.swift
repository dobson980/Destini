//
//  roundedButton.swift
//  Destini
//
//  Created by Tom Dobson on 8/16/17.
//  Copyright © 2017 Dobson Studios. All rights reserved.
//

import UIKit

extension UIButton {
    
    func round() {
        
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        
    }
    
}
