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
    
    
    
    
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        
        if zeroPctButton.isSelected == true {
            print(zeroPct)
        } else if tenPctButton.isSelected == true {
            print(tenPct)
        } else {
            print(twentyPct)
        }
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
    }
    @IBAction func stepperValueChanged(_ sender: Any) {
    }
    
    @IBAction func textFieldChanged(_ sender: UITextField) {
    }
}

