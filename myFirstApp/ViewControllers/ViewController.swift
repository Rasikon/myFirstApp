//
//  ViewController.swift
//  myFirstApp
//
//  Created by Rasikon on 28.08.2020.
//  Copyright © 2020 Rasikon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let person = Person(userName: "User", password: "123456")
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let destinationVC = tabBarController.viewControllers?.first
            as! SecondViewController
        destinationVC.userName = userNameTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func loginButtonPress(_ sender: Any) {
        let userName: String = userNameTextField.text!
        let password: String = passwordTextField.text!
        
        if (userName == person.userName && password == person.password) {
            performSegue(withIdentifier: "firstSegue", sender: nil)
            
        } else if (userName.isEmpty || password.isEmpty) {
            callAlert(title: "Wow", message: "Fill all the fields")
        } else {
            callAlert(title: "Oops", message: "Invalid username or password")
        }
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func forgotUserNamePress(_ sender: Any) {
        callAlert(title: "Your Username:", message: person.userName)
    }
    @IBAction func forgotPasswordPress(_ sender: Any) {
        callAlert(title: "Your Password:" , message: person.password)
    }
    
    private func callAlert(title: String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle:UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK",
                                      style: UIAlertAction.Style.default,
                                      handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}




