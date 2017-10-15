//
//  ViewController.swift
//  AlcoholChecker
//
//  Created by 崇裕 今井 on 2017/09/19.
//  Copyright © 2017年 Takahiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // ラベルのプロパティ宣言
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var drinkingTime: UITextField!
    @IBOutlet weak var alcoholContent: UITextField!
    @IBOutlet weak var result: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func resultButton(_ sender: Any) {
        
        let num1:Int = Int(weight.text!)!
        let num2:Int = Int(drinkingTime.text!)!
        let num3:Double = Double(alcoholContent.text!)!
        let num4:Int = (15 * num1 * num2)
        let num5:Int = Int(num3 * 0.8)
        let resultNum = num4 / num5
        
        result.text = "二日酔いしない飲酒量は\(resultNum)ml"
        
        
        
    }

}

