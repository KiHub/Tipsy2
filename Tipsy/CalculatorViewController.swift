//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    @IBOutlet weak var stepperOutlet: UILabel!
    
    
    @IBOutlet weak var tip0outlet: UIButton!
    
    @IBOutlet weak var tip10outlet: UIButton!
    
    @IBOutlet weak var tip20outlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tipChanged(_ sender: UIButton) {
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
    }
    @IBAction func stepperChanged(_ sender: Any) {
    }
    
    @IBAction func textFieldChanged(_ sender: UITextField) {
    }
}

