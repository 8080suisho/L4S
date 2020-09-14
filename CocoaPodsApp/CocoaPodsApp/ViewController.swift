//
//  ViewController.swift
//  CocoaPodsApp
//
//  Created by 諸星水晶 on 2020/09/10.
//  Copyright © 2020 Mizuki Morohoshi. All rights reserved.
//

import UIKit
import PKHUD

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        HUD.flash(.success,delay: 2.0)
    }


}

