//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Sai Reddy on 31/07/21.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var info: UILabel!
    @IBOutlet weak var finalResult: UILabel!
    
    var result: Float?
    var numberOfPeople: Int?
    var TipPercentage: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        finalResult.text = "\(result!)"

        info.text = "Split between \(numberOfPeople!) people, with tip \(TipPercentage!)"
    }
    
    
    @IBAction func reButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
