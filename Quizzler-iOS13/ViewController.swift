//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    
    let quiz = ["1 + 2 = 3",
                "2 + 3 = 5",
                "5 - 1 = 3"
    ]
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func actionButtonPressed(_ sender: UIButton) {
        questionNumber += 1
        updateUI()
    }
    
    private func updateUI() {
        questionLabel.text = quiz[questionNumber]
    }
}

