//
//  ViewController.swift
//  计分器
//
//  Created by 黄宏 on 2018/11/29.
//  Copyright © 2018 黄宏. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var temp:Double = 0
    var sum:Double = 0

    @IBOutlet weak var text2: UITextField!
    
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var texta: UITextField!
    
    @IBOutlet weak var textb: UITextField!
    @IBOutlet weak var stepperb: UIStepper!
    
    @IBOutlet weak var stepperc: UIStepper!
    @IBAction func steppera(_ sender: Any) {
        stepperb.maximumValue = 13
        stepperb.wraps = true
        
        print("\(stepperb.value)")
        texta.text = "\(Int(stepperb.value))"
        if (stepperb.value == 13)
        {
            temp = temp + 1
            text1.text = "\(temp)"
            if (temp == 2)
            {
                text1.text = "胜利"
            }
            
        }
        

     
    }
    
    @IBAction func stepperc(_ sender: Any) {
        stepperc.maximumValue = 13
        stepperc.wraps = true
        
        print("\(stepperc.value)")
        textb.text = "\(Int(stepperc.value))"
        if (stepperc.value == 13)
        {
            sum = sum + 1
            text2.text = "\(sum)"
        }
    }
    
  
    
    
 
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

