//
//  ViewController.swift
//  LogApp
//
//  Created by user on 13.02.2023.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func logInButton(_ sender: UIButton) {
    }
    
    @IBAction func forgotNameButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Error", message: " Your login 1", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default))
        self.present(alert, animated: true)
    }
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Error", message: " Your password 1", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default))
        self.present(alert, animated: true)
    }
}

