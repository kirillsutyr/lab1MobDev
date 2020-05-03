//
//  ViewController.swift
//  lab1mob
//
//  Created by Oleksandr Bolshoi on 03.03.2020.
//  Copyright © 2020 Sutyr Kyrylo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func clearButton(_ sender: Any) {
        hideBottomMenu()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonOutlet.layer.masksToBounds = true
        buttonOutlet.layer.cornerRadius = 30
        clearButtonOutlet.layer.masksToBounds = true
        clearButtonOutlet.layer.cornerRadius = 30
        hideBottomMenu()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var clearButtonOutlet: UIButton!
    
    @IBAction func questionTextFieeld(_ sender: Any) {
    }
    @IBAction func answerChooseSwitch(_ sender: Any) {
    }
    @IBOutlet weak var textFieldValue: UITextField!
    
    @IBOutlet weak var switchValue: UISwitch!
    @IBAction func okButtonTapped(_ sender: Any) {
        changeLabels()
        showBottomMenu()
    }
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var buttonOutlet: UIButton!
    @IBOutlet weak var answerLabel: UILabel!
    func changeLabels() {
        if let text = textFieldValue.text {
            questionLabel.text = text.last == "?" ? text : text + "?"
            if switchValue.isOn {
                answerLabel.text = "YES"
                answerLabel.textColor = .green
            } else {
                answerLabel.text = "NO"
                answerLabel.textColor = .red
            }
        }
        
    }
    func hideBottomMenu() {
        answerLabel.isHidden = true
        questionLabel.isHidden = true
        clearButtonOutlet.isHidden = true
    }
    func showBottomMenu() {
        answerLabel.isHidden = false
        questionLabel.isHidden = false
        clearButtonOutlet.isHidden = false
    }
}

