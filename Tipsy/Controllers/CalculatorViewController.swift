//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    let zeroPct = 0.0
    let tenPct = 0.1
    let twentyPct = 0.2
    
    let splitCounter = 1
    
    var billTotal = 0.0
    var tip = 0.0
    var finalResult = "0.0"
    
   
    
    
    
    
    
    
    
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    
    @IBOutlet weak var stepperOutlet: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        stepperOutlet.value = 2
        stepperOutlet.stepValue = 1
        stepperOutlet.minimumValue = 1
        stepperOutlet.maximumValue = 20
    }


    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        billTextField.endEditing(true)
        
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        if zeroPctButton.isSelected == true {
            print(zeroPct)
            tip = zeroPct
        } else if tenPctButton.isSelected == true {
            print(tenPct)
            tip = tenPct
        } else {
            print(twentyPct)
            tip = twentyPct
        }
        
        print(stepperOutlet.value)
        print(billTextField.text ?? "No data")
        
        let totalBill = billTextField.text!
        if totalBill != "" {
            billTotal = Double(totalBill)!
            let result = billTotal * (1 + tip) / Double(stepperOutlet.value)
            finalResult = String(format: "%.2f", result)
            print("Result: ", finalResult)
        }
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        var stepperCurrent: CGFloat
        stepperCurrent = CGFloat(sender.value)
        stepperOutlet.value = Double(stepperCurrent)
        splitNumberLabel.text = String(format: "%.0f", Double(stepperCurrent))
       // print(stepperCurrent)
        billTextField.endEditing(true)
        
        
    }
    
    @IBAction func textFieldChanged(_ sender: UITextField) {
       
    }
}


