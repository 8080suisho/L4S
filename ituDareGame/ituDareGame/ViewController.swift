//
//  ViewController.swift
//  ituDareGame
//
//  Created by 諸星水晶 on 2020/08/25.
//  Copyright © 2020 Mizuki Morohoshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var index:Int = 0
    
    @IBOutlet var ituLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    let ituArray : [String] = ["一年前","一週間","昨日","今日"]
    let dokodeArray : [String] = ["山の上で","アメリカで","学校で","クラスで"]
    let daregaArray : [String] = ["僕が","大統領が","先生が","友達が"]
    let doshitaArray : [String] = ["叫んだ","演説した","怒った","踊った"]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func change(){
        ituLabel.text = ituArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        index = index + 1
        
        if index > 3 {
            index = 0
        }
    }
    
    @IBAction func reset(){
        ituLabel.text = "---"
        dokodeLabel.text = "---"
        daregaLabel.text = "---"
        doshitaLabel.text = "---"
        
        index = 0
    }
    
    @IBAction func random(){
        let ituIndex = Int.random(in: 0...3)
        let dokodeIndex = Int.random(in: 0...3)
        let daregaIndex = Int.random(in: 0...3)
        let doshitaIndex = Int.random(in: 0...3)
        
        print("いつ\(ituIndex)")
        print("どこで\(dokodeIndex)")
        print("だれが\(daregaIndex)")
        print("どうした\(doshitaIndex)")
        
        ituLabel.text = ituArray[ituIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
        
        
    }


}

