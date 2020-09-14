//
//  ViewController.swift
//  CountPractice2
//
//  Created by 諸星水晶 on 2020/08/25.
//  Copyright © 2020 Mizuki Morohoshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label : UILabel!
    
    var number : Int = 0
    
    func colorControll(){
        if number >= 10{
            label.textColor = UIColor.red
        }else if number < 0{
            label.textColor = UIColor.blue
        }else{
            label.textColor = UIColor.black
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func plus(){
        number += 1
        label.text = String(number)
        
        colorControll()
        
    }
    
    @IBAction func minus(){
        number -= 1
        label.text = String(number)
        
        colorControll()
    }
    
    @IBAction func kakeru(){
        number *= 2
        label.text = String(number)
        
        colorControll()
    }
    
    @IBAction func waru(){
        number /= 2
        label.text = String(number)
        
       colorControll()
    }
    
    @IBAction func clear(){
        number = 0
        label.text = String(number)
        
        colorControll()
        
    }
    
    

}

