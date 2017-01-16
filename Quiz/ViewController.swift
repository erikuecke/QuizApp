//
//  ViewController.swift
//  Quiz
//
//  Created by Erik Uecke on 1/16/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
// View Controller
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!

// Model layer
    let questions: [String] = [
        "What is 7 + 7?",
        "What is the capital of Vermont",
        "What is congnac made from ?"
    ]
    
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    
    var currentQuestionIndex: Int = 0
    
// Controller layer
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }


}

