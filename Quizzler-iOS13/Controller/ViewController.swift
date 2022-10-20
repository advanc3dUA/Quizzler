//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func actionButtonPressed(_ sender: UIButton) {
        if quizBrain.checkAnswer(sender.currentTitle!) {
            buttonBackGroundAnimate(for: sender, color: .green)
        } else {
            buttonBackGroundAnimate(for: sender, color: .red)
        }
        
        quizBrain.nextQuestion()
        updateUI()
    }
    
    private func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
    }
    
    private func buttonBackGroundAnimate(for sender: UIButton, color: UIColor) {
        UIView.animate(withDuration: 0.5, delay: 0) {
            sender.backgroundColor = color
        } completion: { finished in
            sender.backgroundColor = .clear
        }
    }
}

