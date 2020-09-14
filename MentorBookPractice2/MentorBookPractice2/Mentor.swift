//
//  Mentor.swift
//  MentorBookPractice2
//
//  Created by 諸星水晶 on 2020/08/26.
//  Copyright © 2020 Mizuki Morohoshi. All rights reserved.
//

import UIKit

class Mentor {
    
    var name: String!
    var course: String!
    var imageName: String!
    
    init(name: String, course: String!, imageName:String) {
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    
    func getImage() -> UIImage{
        return UIImage(named: imageName)!
    }
    
    
    
}
