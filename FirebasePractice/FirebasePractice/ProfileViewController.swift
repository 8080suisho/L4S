//
//  ProfileViewController.swift
//  FirebasePractice
//
//  Created by 諸星水晶 on 2020/09/25.
//

import UIKit
import Firebase


class ProfileViewController: UIViewController {
    
    @IBOutlet var favoriteMealSegment: UISegmentedControl!
    
    @IBOutlet var favoriteSportsSegment: UISegmentedControl!
    
    @IBOutlet var yourPetSegment: UISegmentedControl!
    
    @IBOutlet var breakfastEverdaySwitch: UISwitch!
    
    
    @IBAction func didTapRegisterButton(){
        guard let user = Auth.auth().currentUser else {
                // サインインしていない場合の処理をするなど
                return
            }
            
            let favoriteMeal = FavoriteMeal.items[favoriteMealSegment.selectedSegmentIndex].rawValue
            let favoriteSports = FavoriteSports.items[favoriteSportsSegment.selectedSegmentIndex].rawValue
            let yourPet = YourPet.items[yourPetSegment.selectedSegmentIndex].rawValue
            let breakfastEverday = breakfastEverdaySwitch.isOn
            
            let db = Firestore.firestore()
            
            db.collection("users").document(user.uid).setData([
                "favoriteMeal": favoriteMeal,
                "favoriteSports": favoriteSports,
                "yourPet": yourPet,
                "breakfastEverday": breakfastEverday,
            ]) { error in
                if let error = error {
                    // エラー処理
                    return
                }
                // 成功したときの処理
            }
    }
    
    enum FavoriteMeal: String {
        case japanese, weastern, chinese, italian
        static let items: [FavoriteMeal] = [.japanese, .weastern, .chinese, .italian]
    }

    enum FavoriteSports: String {
        case baseball, soccer, tennis
        static let items: [FavoriteSports] = [.baseball, .soccer, .tennis]
    }

    enum YourPet: String {
        case dog, cat
        static let items: [YourPet] = [.dog, .cat]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    

}
