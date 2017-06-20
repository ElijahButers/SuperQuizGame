//
//  MultipleChoiceViewController.swift
//  SuperQuizGame
//
//  Created by User on 6/19/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class MultipleChoiceViewController: UIViewController {
    
    private let contentView = UIView()
    private let contentViewConstraints: [NSLayoutConstraint]!
    
    private let questionView = UIView()
    private let questionViewConstraints: [NSLayoutConstraint]!
    
    private let answerView = UIView()
    private let answerViewConstraints: [NSLayoutConstraint]!
    
    private let countdownView = UIView()
    private let countdownViewConstraints: [NSLayoutConstraint]!
    
    private let questionLabel = RoundedLabel()
    private let questionLabelConstraints: [NSLayoutConstraint]!
    private let questionButton = RoundedButton()
    private let questionButtonConstraints: [NSLayoutConstraint]!
    private let answerButtons = [RoundedButton]()
    private let answerButtonsConstraints: [NSLayoutConstraint]!
    private let progressView = UIProgressView()
    private let progressViewConstraints: [NSLayoutConstraint]!
    
    private let backgroundColor = UIColor(red: 44/255, green: 62/255, blue: 80/255, alpha: 1.0)
    private let foregroundColor = UIColor(red: 52/255, green: 73/255, blue: 94/255, alpha: 1.0)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = backgroundColor
        layoutView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        navigationController?.navigationBar.isHidden = false
        
    }
    
    func layoutView() {
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(contentView)
        questionView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(questionView)
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        questionView.addSubview(questionLabel)
        questionLabel.backgroundColor = foregroundColor
        questionLabel.textColor = UIColor.white
        questionLabel.font = UIFont.boldSystemFont(ofSize: 50)
        questionLabel.textAlignment = .center
        questionLabel.numberOfLines = 4
        questionLabel.adjustsFontSizeToFitWidth = true
        
        answerView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(answerView)
        for _ in 0...3 {
            let button = RoundedButton()
            answerButtons.append(button)
            button.translatesAutoresizingMaskIntoConstraints = false
            answerView.addSubview(button)
        }
        
        countdownView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(countdownView)
        progressView.translatesAutoresizingMaskIntoConstraints = false
        countdownView.addSubview(progressView)
        
    }

}
