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
    
    private let user = User.getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.isSecureTextEntry = true
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user
    }
    
    @IBAction func logInButton() {
        if loginTextField.text == user.login &&
           passwordTextField.text == user.password {
        }  else {
            showAlert(title: "Invalid login or password", message: "please correct")
        }
    }
    
    @IBAction func forgotNameButton(_ sender: UIButton) {
        showAlert(title: "Error", message: "You login is \(user.login)")
    }
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        showAlert(title: "Error", message: "You login is \(user.password)")
    }
    
    @IBAction func unwindToFirstScreen(_ segue: UIStoryboardSegue) {
        loginTextField.text = nil
        passwordTextField.text = nil
    }
    
}
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
     
    }
}
extension LoginViewController: UITextFieldDelegate {
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
