//
//  ViewController.swift
//  Tipsy
//
//  Created by Sai Reddy on 31/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    
    var tipPercent: Float = 0.0
    
    override func viewDidLoad() {
        splitNumberLabel.text = String(2)
        super.viewDidLoad()
        
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        //update UI
        updateUI()
        let button = sender.currentTitle!
        updateTip(i: button)
        sender.isSelected = true
        tipPercent = Float(String(button.dropLast()))!/100
        print(tipPercent)
    }


    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(Int(sender.value))
        print(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
//        print(tipPercent)
        updateUI()
    }
    
    func updateTip(i: String){
        if(i=="0%"){
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            zeroPctButton.backgroundColor = #colorLiteral(red: 0.4500938654, green: 0.9813225865, blue: 0.4743030667, alpha: 0.6115434659)
            
        }
        else if(i=="10%"){
            zeroPctButton.isSelected = false
            twentyPctButton.isSelected = false
            tenPctButton.backgroundColor = #colorLiteral(red: 0.4500938654, green: 0.9813225865, blue: 0.4743030667, alpha: 0.6115434659)
        }
        else{
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.backgroundColor = #colorLiteral(red: 0.4500938654, green: 0.9813225865, blue: 0.4743030667, alpha: 0.6115434659)
        }
    }
    func updateUI(){
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        zeroPctButton.backgroundColor = UIColor.clear
        tenPctButton.backgroundColor = UIColor.clear
        twentyPctButton.backgroundColor = UIColor.clear
    }
}

