//
//  RoundedButton.swift
//  SuperQuizGame
//
//  Created by User on 6/10/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        layer.cornerRadius = 5.0
        layer.masksToBounds = true
    }
    

}
