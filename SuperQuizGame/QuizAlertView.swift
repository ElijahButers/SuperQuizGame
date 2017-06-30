//
//  QuizAlertView.swift
//  SuperQuizGame
//
//  Created by User on 6/28/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class QuizAlertView: UIView {

    private let alertView = UIView()
    private let titleLabel = RoundedLabel()
    private let messageLabel = RoundedLabel()
    let closeButton = UIButton()
    
    init(withTitle title: String, andMessage message: String, colors: [UIColor]) {
        super.init(frame: CGRect.zero)
        titleLabel.text = title
        messageLabel.text = message
        alertView.backgroundColor = colors[0]
        closeButton.backgroundColor = colors[1]
        layoutView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func layoutView() {
        
    }
    
}
