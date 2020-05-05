//
//  ViewController.swift
//  Calculator_iOS
//
//  Created by Emerson Javid Gonzalez Morales on 4/05/20.
//  Copyright © 2020 Emerson Javid Gonzalez Morales. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Label.text = ""
    }

    @IBAction func Percent(_ sender: Any) {
    }
    
    @IBAction func Zero(_ sender: Any) {
        Label.text = Label.text! + "0"
    }
    
    @IBAction func Point(_ sender: Any) {
    }
    
    @IBAction func Equal(_ sender: Any) {
        if (!isLastCharacterAOperarion()) {
            let replacedDivideTokens = Label.text?.replacingOccurrences(of: "÷", with: "/")
            let replacedMultipliTokens = replacedDivideTokens?.replacingOccurrences(of: "×", with: "*")
            
            let expn = NSExpression(format: replacedMultipliTokens!)
            let result = expn.expressionValue(with: nil, context: nil)
            Label.text = "\(result ?? 0)"
        }
        
    }
    
    @IBAction func One(_ sender: Any) {
        Label.text = Label.text! + "1"
    }
    
    @IBAction func Two(_ sender: Any) {
        Label.text = Label.text! + "2"
    }
    
    @IBAction func Three(_ sender: Any) {
        Label.text = Label.text! + "3"
    }
    
    @IBAction func Plus(_ sender: Any) {
        if (!isLastCharacterAOperarion()) {
            Label.text = Label.text! + "+"
        }
    }
    
    @IBAction func Four(_ sender: Any) {
        Label.text = Label.text! + "4"
    }
    
    @IBAction func Five(_ sender: Any) {
        Label.text = Label.text! + "5"
    }
    
    @IBAction func Six(_ sender: Any) {
        Label.text = Label.text! + "6"
    }
    
    @IBAction func Less(_ sender: Any) {
        if (!isLastCharacterAOperarion()) {
            Label.text = Label.text! + "-"
        }
    }
    
    @IBAction func Seven(_ sender: Any) {
        Label.text = Label.text! + "7"
    }
    
    @IBAction func Eight(_ sender: Any) {
        Label.text = Label.text! + "8"
    }
    
    @IBAction func Nine(_ sender: Any) {
        Label.text = Label.text! + "9"
    }
    
    @IBAction func Multiplication(_ sender: Any) {
        if (!isLastCharacterAOperarion()) {
            Label.text = Label.text! + "×"
        }
    }
    
    @IBAction func EraseC(_ sender: Any) {
        Label.text = ""
    }
    
    @IBAction func Divide(_ sender: Any) {
        if (!isLastCharacterAOperarion()) {
            Label.text = Label.text! + "÷"
        }
    }
    
    @IBAction func Delete(_ sender: Any) {
        Label.text!.remove(at: Label.text!.index(before: Label.text!.endIndex))
    }
    
    @IBOutlet weak var Label: UILabel!
    
    
    private func isLastCharacterAOperarion() -> Bool {
        let lastCharacter: String = String(Label.text!.last!)
        
        return (lastCharacter.elementsEqual("÷") || lastCharacter.elementsEqual("/") ||
        lastCharacter.elementsEqual("×") || lastCharacter.elementsEqual("+") ||
        lastCharacter.elementsEqual("-"))
    }
}

