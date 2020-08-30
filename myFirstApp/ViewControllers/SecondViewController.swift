//
//  SecondViewController.swift
//  myFirstApp
//
//  Created by Rasikon on 28.08.2020.
//  Copyright © 2020 Rasikon. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLabel.text = "Welcome ," + userName
    }
    
    @IBAction func pressLogOut(_ sender: Any) {
        dismiss(animated: true)
    }
}
