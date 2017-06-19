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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        navigationController?.navigationBar.isHidden = false
        
    }

}
