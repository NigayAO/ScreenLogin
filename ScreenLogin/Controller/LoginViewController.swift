//
//  LoginViewController.swift
//  ScreenLogin
//
//  Created by Alik Nigay on 29.10.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    let user = User.getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let tabBar = segue.destination as? UITabBarController else { return }
        let viewcontrollers = tabBar.viewControllers!
        
        for viewController in viewcontrollers {
            
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.people = user.person.name
            } else if let informationVC = viewController as? InformationViewController {
                informationVC.person = user
            } else if let navigationVC = viewController as? UINavigationController {
                let imageVC = navigationVC.topViewController as? ImageViewController
                imageVC?.image = user.person.image
            }
        }
    }
    
    @IBAction func loginPressed() {
                
        if loginTF.text != user.login || passwordTF.text != user.password {
            addAlert("Invalid login or password", "Please, enter correct login and password")
            if loginTF.text != user.login {
                loginTF.text = ""
            } else {
                passwordTF.text = ""
            }
        }
    }
    
    @IBAction func hintUserName(_ sender: UIButton) {
        addAlert("Ooops", "The user name is User")
    }
    
    @IBAction func hintPassword(_ sender: UIButton) {
        addAlert("Ooops", "The user password is 123456")
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }
}

//MARK: - AlertController

extension LoginViewController {
    
    private func addAlert(_ title: String, _ message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Close", style: .cancel)
        alert.addAction(action)
        present(alert, animated: true)
    }
}

//MARK: - Work with keyboard

extension LoginViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginTF {
            passwordTF.becomeFirstResponder()
        } else {
            loginPressed()
            performSegue(withIdentifier: "login", sender: self)
        }
        return true
    }
}




