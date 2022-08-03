//
//  ViewController.swift
//  Calculater App (StoryBoard)
//
//  Created by Thaisa Fujii on 03/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelShowsNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var newOperation = true
    func AddNumberToInput(number:String){
        var textNumber = String(labelShowsNumber.text!)
        if newOperation == true {
            textNumber = ""
            newOperation = false
        }
        textNumber = textNumber + number
        labelShowsNumber.text = textNumber
    }
    
    @IBAction func buttonZero(_ sender: Any) {
        AddNumberToInput(number: "0")
    }
    @IBAction func buttonDot(_ sender: Any) {
        AddNumberToInput(number: ".")
    }
    @IBAction func buttonOne(_ sender: Any) {
        AddNumberToInput(number: "1")
    }
    @IBAction func buttonTwo(_ sender: Any) {
        AddNumberToInput(number: "2")
    }
    @IBAction func buttonThree(_ sender: Any) {
        AddNumberToInput(number: "3")
    }
    @IBAction func buttonFour(_ sender: Any) {
        AddNumberToInput(number: "4")
    }
    @IBAction func buttonFive(_ sender: Any) {
        AddNumberToInput(number: "5")
    }
    @IBAction func buttonSix(_ sender: Any) {
        AddNumberToInput(number: "6")
    }
    @IBAction func buttonSeven(_ sender: Any) {
        AddNumberToInput(number: "7")
    }
    @IBAction func buttonEight(_ sender: Any) {
        AddNumberToInput(number: "8")
    }
    @IBAction func buttoNine(_ sender: Any) {
        AddNumberToInput(number: "9")
    }
    
    var operation = "+"
    var number1:Double?
    @IBAction func buttonMultiplication(_ sender: Any) {
        operation = "*"
        number1 = Double(labelShowsNumber.text!)
        newOperation = true
    }
    @IBAction func buttonDivision(_ sender: Any) {
        operation = "/"
        number1 = Double(labelShowsNumber.text!)
        newOperation = true
    }
    
    @IBAction func buttonMinus(_ sender: Any) {
        operation = "-"
        number1 = Double(labelShowsNumber.text!)
        newOperation = true
    }
    @IBAction func buttonPlus(_ sender: Any) {
        operation = "+"
        number1 = Double(labelShowsNumber.text!)
        newOperation = true
    }
    
    
    @IBAction func buttonAC(_ sender: Any) {
        labelShowsNumber.text = "0"
        newOperation = true
    }
    
    @IBAction func buttonPlusMinus(_ sender: Any) {
        var textNumber = String(labelShowsNumber.text!)
        textNumber = "-" + textNumber
        labelShowsNumber.text = textNumber
    }
    
    @IBAction func buttonPercentage(_ sender: Any) {
        number1 = number1!/100.0
        labelShowsNumber.text = String(number1!)
        newOperation = true
    }
    
    @IBAction func buttonEqual(_ sender: Any) {
        let number2  = Double(labelShowsNumber.text!)
        var Results:Double?
        switch operation {
        case "*":
            Results = number1! * number2!
        case "/":
            Results = number1! / number2!
        case "-":
            Results = number1! - number2!
        case "+":
            Results = number1! + number2!
        default:
            Results = 0.0
        }
        labelShowsNumber.text = String(Results!)
        newOperation = true
    }
    
}

