//
//  TipsyBrain.swift
//  Tipsy
//
//  Created by Sai Reddy on 02/08/21.
//

import UIKit

struct TipsyBrain{
    var people:Int = 2
//    var result:Float?
    
    func get_splitNumber()->Int{
        return people
    }
    mutating func update_splitNumber(p: Double){
        people = Int(p)
    }
    func get_result(bt: String,tp: Float)->Float{
        return (Float(bt)! + Float(bt)! * tp)/Float(people)
    }
    func get_perTip(p: String)->Float{
        return Float(String(p.dropLast()))!/100
    }
    func updateUI(a: UIButton,b: UIButton, c: UIButton){
        a.isSelected=false
        b.isSelected=false
        c.isSelected=false
        a.backgroundColor = UIColor.clear
        b.backgroundColor = UIColor.clear
        c.backgroundColor = UIColor.clear
    }
    func updateTip(a: UIButton,b: UIButton, c: UIButton,i: String){
        if(i=="0%"){
            c.isSelected = false
            b.isSelected = false
            a.backgroundColor = #colorLiteral(red: 0.4500938654, green: 0.9813225865, blue: 0.4743030667, alpha: 0.6115434659)
            
        }
        else if(i=="10%"){
            a.isSelected = false
            c.isSelected = false
            b.backgroundColor = #colorLiteral(red: 0.4500938654, green: 0.9813225865, blue: 0.4743030667, alpha: 0.6115434659)
        }
        else{
            a.isSelected = false
            b.isSelected = false
            c.backgroundColor = #colorLiteral(red: 0.4500938654, green: 0.9813225865, blue: 0.4743030667, alpha: 0.6115434659)
        }
    }
    func get_title(but: UIButton)->String{
        return but.currentTitle!
    }
}
