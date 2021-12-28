//
//  ViewController.swift
//  PreworkReal
//
//  Created by Mo Kranwinkel on 11/29/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipSplitTextField: UITextField!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.2]
        let split = Double(tipSplitTextField.text!) ?? 1
        let tip = (bill * tipPercentages[tipControl.selectedSegmentIndex])/split
        let total = bill + tip*split
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

