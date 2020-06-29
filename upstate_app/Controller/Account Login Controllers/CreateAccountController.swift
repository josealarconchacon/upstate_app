//
//  CreateAccountController.swift
//  upstate_app
//
//  Created by Jose Alarcon Chacon on 6/29/20.
//  Copyright © 2020 Jose Alarcon Chacon. All rights reserved.
//

import UIKit

class CreateAccountController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var useremail: UITextField!
    @IBOutlet weak var userpassword: UITextField!
    
    private var authservice = AppDelegate.authservice
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        authservice.authserviceCreateNewAccountDelegate = self
    }
    @IBAction func createAccountBP(_ sender: UIButton) {
        guard let username = username.text, !username.isEmpty,
              let email = useremail.text, !email.isEmpty,
              let password = userpassword.text, !password.isEmpty else {
            return
        }
        authservice.createNewAccount(username: username, email: email, password: password)
    }
}

extension CreateAccountController: AuthServiceCreateNewAccountDelegate {
  func didRecieveErrorCreatingAccount(_ authservice: AuthService, error: Error) {
    print(error.localizedDescription)
  }
  
  func didCreateNewAccount(_ authservice: AuthService, reviewer: User_Info) {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let mainTabBarController = storyboard.instantiateViewController(withIdentifier: "TabBarController") as! UITabBarController
    mainTabBarController.modalTransitionStyle = .crossDissolve
    mainTabBarController.modalPresentationStyle = .overFullScreen
    present(mainTabBarController, animated: true)
  }
}
