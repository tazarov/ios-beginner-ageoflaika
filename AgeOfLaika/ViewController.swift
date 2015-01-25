//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Trayan Azarov on 1/25/15.
//  Copyright (c) 2015 Chaos Labs OOD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    
    @IBOutlet weak var enterHumanYearsTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        let dogYearsConvertionConstant = 7
        let humanYearsFromText = enterHumanYearsTextField.text.toInt()!
        // this throws an exception when text is empty
        dogYearsLabel.text = "\(dogYearsConvertionConstant * humanYearsFromText)" + " in dog years"
        dogYearsLabel.textColor=UIColor.redColor()
        dogYearsLabel.hidden=false
        
        enterHumanYearsTextField.text=""
        enterHumanYearsTextField.resignFirstResponder()

    }

}

