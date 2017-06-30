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
        
        self.backgroundColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 0.85)
        self.translatesAutoresizingMaskIntoConstraints = false
        
        alertView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(alertView)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        alertView.addSubview(titleLabel)
        alertView.addSubview(messageLabel)
        titleLabel.font = UIFont.boldSystemFont(ofSize: 30)
        titleLabel.adjustsFontSizeToFitWidth = true
        titleLabel.textColor = UIColor.white
        titleLabel.textAlignment = .center
        messageLabel.font = UIFont.boldSystemFont(ofSize: 20)
        messageLabel.numberOfLines = 2
        messageLabel.adjustsFontSizeToFitWidth = true
        messageLabel.textColor = UIColor.white
        messageLabel.textAlignment = .center
        
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        alertView.addSubview(closeButton)
        closeButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        closeButton.titleLabel?.adjustsFontSizeToFitWidth = true
        closeButton.titleLabel?.textColor = UIColor.white
        closeButton.setTitle("Continue", for: .normal)
    }
    
}
