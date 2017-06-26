//
//  QuizLoader.swift
//  SuperQuizGame
//
//  Created by User on 6/23/17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation

struct MultipleChoiceQuestion {
    let question: String
    let correctAnswer: String
    let answers: [String]
}

enum LoaderError: Error {
    case dictionaryFailed, pathFailed
}
