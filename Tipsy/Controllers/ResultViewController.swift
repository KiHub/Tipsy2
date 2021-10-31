//
//  ResultViewController.swift
//  Tipsy
//
//  Created by  Mr.Ki on 31.10.2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var result = "0.0"
    var peoples = "0.0"
    var percent = 0
    
    
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
   
        
        totalLabel.text = result
        settingsLabel.text = "Split between \(peoples) people, with \(percent)% tip."
        

        
    }
    

 
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        dismiss(animated: true)
    }
    

}
