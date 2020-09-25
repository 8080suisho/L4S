//
//  ViewController.swift
//  FirebasePractice
//
//  Created by 諸星水晶 on 2020/09/24.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var emailTextField:UITextField!
    @IBOutlet var passwordTextField:UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func didTapSigunUpButton(){
        let email = emailTextField.text ?? ""
            let password = passwordTextField.text ?? ""
            let name = nameTextField.text ?? ""
            
            Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
                guard let self = self else { return }
                if let user = result?.user {
                    let req = user.createProfileChangeRequest()
                    req.displayName = name
                    req.commitChanges() { [weak self] error in
                        guard let self = self else { return }
                        if error == nil {
                            user.sendEmailVerification() { [weak self] error in
                                guard let self = self else { return }
                                if error == nil {
                                    self.performSegue(withIdentifier: "toSecond", sender: nil)
                                }
                                self.showErrorIfNeeded(error)
                            }
                        }
                        self.showErrorIfNeeded(error)
                    }
                }
                self.showErrorIfNeeded(error)
            }
    }
    
    
    
    
    func showErrorIfNeeded(_ errorOnNil: Error?){
        
        guard  let error = errorOnNil else { return }
        
        let message = "エラーが起きました"
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }


}

