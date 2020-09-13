//
//  ViewController.swift
//  PasswordHacker
//
//  Created by risako takeya on 2020/09/08.
//  Copyright © 2020 com.litech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel1: UILabel!
    @IBOutlet var resultLabel2: UILabel!
    @IBOutlet var resultLabel3: UILabel!
    @IBOutlet var resultLabel4: UILabel!
    
    @IBOutlet var countLabel:UILabel!
    
    var password:Int = 1400

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func start(){
        for i in 0...9999{
            countLabel.text = String(i)
            
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0005))
            
            var number:Int = i
            var digits1 = [Int]()
            
            if i == password{
                print("正解は\(i)です！")
            }
            
            if i < password{
                
                for _ in 0...3{
                    digits1.append(number % 10)
                    number =  number / 10
                }
                
                resultLabel1.text = String(digits1[0])
                resultLabel2.text = String(digits1[1])
                resultLabel3.text = String(digits1[2])
                resultLabel4.text = String(digits1[3])
                
            }else{
                var digits = [Int]()
                
                var password:Int = 1400

                for _ in 0...3{
                    digits.append(password % 10)
                    password = password / 10
                }

                resultLabel1.text = String(digits[0])
                resultLabel2.text = String(digits[1])
                resultLabel3.text = String(digits[2])
                resultLabel4.text = String(digits[3])
                
            }
        }
        
    }
    
    @IBAction func reset(){
        password = 1400
        
        countLabel.text = "「START」ボタンを押して解析開始"
        
        resultLabel1.text = "0"
        resultLabel2.text = "0"
        resultLabel3.text = "0"
        resultLabel4.text = "0"
        
    }


}

