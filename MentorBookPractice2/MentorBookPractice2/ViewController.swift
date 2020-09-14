//
//  ViewController.swift
//  MentorBookPractice2
//
//  Created by 諸星水晶 on 2020/08/26.
//  Copyright © 2020 Mizuki Morohoshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []
    
    var index:Int = 0
    
    @IBOutlet var imageView:UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mentorArray.append(Mentor(name: "ながた", course: "iPhone", imageName: "nagata.jpg"))
        mentorArray.append(Mentor(name: "りょう", course: "Unity", imageName:"ryo.jpg"))
        mentorArray.append(Mentor(name: "たいてぃ", course: "WebS,WebD", imageName: "taithi.jpg"))
        
        setUI()
    }
    
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    
    
    
    @IBAction func mae(){
        index = index - 1
        if index < 0{
            index = 2
        }
        setUI()
    }
    
    @IBAction func tugi(){
        index = index + 1
        if index > 2{
            index = 0
        }
        setUI()
    }


}

