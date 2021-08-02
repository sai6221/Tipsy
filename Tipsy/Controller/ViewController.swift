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
    
    var tipPercent: Float?
    var tip: String?
    var result:Float?
    var tBrain = TipsyBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        splitNumberLabel.text = String(tBrain.get_splitNumber())
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        tBrain.updateUI(a: zeroPctButton, b: tenPctButton, c: twentyPctButton)
        tBrain.updateTip(a: zeroPctButton, b: tenPctButton, c: twentyPctButton,i: tBrain.get_title(but: sender))
        sender.isSelected = true
        tip = tBrain.get_title(but: sender)
        tipPercent = tBrain.get_perTip(p: tBrain.get_title(but: sender))
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        tBrain.update_splitNumber(p: sender.value)
        splitNumberLabel.text = String(tBrain.get_splitNumber())
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        result = tBrain.get_result(bt: billTextField.text!,tp: tipPercent!)
        billTextField.text = ""
        tBrain.updateUI(a: zeroPctButton, b: tenPctButton, c: twentyPctButton)
        performSegue(withIdentifier: "goToResult", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToResult"){
            let DestinationVC = segue.destination as! ResultViewController
            DestinationVC.result = result
            DestinationVC.numberOfPeople = tBrain.get_splitNumber()
            DestinationVC.TipPercentage = tip
        }
    }
}

