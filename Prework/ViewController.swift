//
//  ViewController.swift
//  Prework
//
//  Created by Dhvani Bhatt on 12/3/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var TipSlider: UISlider!
    
    @IBOutlet weak var TipSliderLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func SliderTipChanger(_ sender: UISlider) {
        
        let bill = Double(billAmountTextField.text!) ?? 0
        let currentValue = Int(sender.value)
        let tipPercentage = Double(currentValue)/Double(100)
        let tip = bill * tipPercentage
        let total = tip + bill
        tipAmountLabel.text = "$" + "\(String(tip))"
        totalLabel.text = String(format:"$%.2f", total)
        TipSliderLabel.text = "\(String(currentValue))" + "%"    }
}
