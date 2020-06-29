//
//  LoginViewController.swift
//  upstate_app
//
//  Created by Jose Alarcon Chacon on 6/25/20.
//  Copyright © 2020 Jose Alarcon Chacon. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    private var authservice = AppDelegate.authservice
    
    override func viewDidLoad() {
        super.viewDidLoad()

       authservice.authserviceExistingAccountDelegate = self
    }
    

    @IBAction func loginButtonPressed(_ sender: UIButton) {
          guard let email = emailField.text, !email.isEmpty, let password = passwordField.text, !password.isEmpty else {
              return
          }
          authservice.signInExistingAccount(email: email, password: password)
        }
    }


extension LoginViewController: AuthServiceExistingAccountDelegate {
  func didRecieveErrorSigningToExistingAccount(_ authservice: AuthService, error: Error) {
//    showAlert(title: "Signin Error", message: error.localizedDescription)
    print(error.localizedDescription)
  }
    
    func didSignInToExistingAccount(_ authservice: AuthService, user: User) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainTabBarController = storyboard.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
        mainTabBarController.modalTransitionStyle = .crossDissolve
        mainTabBarController.modalPresentationStyle = .overFullScreen
        present(mainTabBarController, animated: true)
    }
}
