//
//  ViewController.swift
//  Homework2
//
//  Created by David Castaneda on 6/6/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelOutlet: UILabel!
    @IBOutlet weak var editTextOutlet: UITextField!
    @IBOutlet weak var buttonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func isEditing(_ sender: Any) {
        buttonLabel.isEnabled = true
    }
    
    @IBAction func guessNumberBtnAction(_ sender: Any) {
        readUserInput()
        clearTextField()
        buttonLabel.isEnabled = false
    }
    
    func enableButton(){
        if ((editTextOutlet.text?.isEmpty) != nil) {
            buttonLabel.isEnabled = true
        } else {
            buttonLabel.isEnabled = false
        }
    }
    
    func readUserInput() {
        let guessNum = editTextOutlet.text ?? ""
        if isNumeric(guessNum) {
            let target = createRandomNum()
            if target == Int(guessNum)! {
                labelOutlet.text = "Great! Now dare again"
            } else {
                labelOutlet.text = "Almost there, your guess was \(guessNum) the actual value was \(target)"
            }
        } else {
            labelOutlet.text = "Oops, only numbers"
        }
    }
    
    func isNumeric(_ input: String) -> Bool {
        let numericCharacterSet = CharacterSet.decimalDigits
        let stringCharacterSet = CharacterSet(charactersIn: input)
        let isNumeric = numericCharacterSet.isSuperset(of: stringCharacterSet)
        return isNumeric
    }
    
    func createRandomNum() -> Int {
        let randomNumber = Int.random(in: 1...6)
        return randomNumber
    }
    
    func clearTextField() {
        editTextOutlet.text = ""
    }
}

