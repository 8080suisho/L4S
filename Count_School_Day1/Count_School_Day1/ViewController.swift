//
//  ViewController.swift
//  Count_School_Day1
//
//  Created by 諸星水晶 on 2020/09/14.
//  Copyright © 2020 Mizuki Morohoshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet var label:UILabel!
    
    var number: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func plus(){
        
        number += 1
        changeColor()
        label.text = String(number)
    }
    
    @IBAction func minus(){
        
        number -= 1
        changeColor()
        label.text = String(number)
    }
    
    @IBAction func clear(){
        number = 0
        label.text = String(number)
        label.textColor = UIColor.black
    }
    
    
    func changeColor(){
        if number >= 10{
            label.textColor = UIColor.red
        }else if number < 0{
            label.textColor = UIColor.blue
        }else{
            label.textColor = UIColor.black
        }
    }



}

