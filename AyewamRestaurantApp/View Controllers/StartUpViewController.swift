//
//  StartUpViewController.swift
//  AyewamRestaurantApp
//
//  Created by Jay A. on 3/18/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import UIKit
import AuthenticationServices

class StartUpViewController: UIViewController {
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var sloganLabel: UILabel!
    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var loginWithAppleButton: UIButton!
    
    @IBOutlet weak var noAccountLabel: UILabel!
    @IBOutlet weak var signUpButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        designSetUp()
    }
    
    func designSetUp() {
        
        loginButton.solidButton()
        loginWithAppleButton.appleButton()
        
        // Login with Apple Button
        
//        let appleButton = ASAuthorizationAppleIDButton()
//        appleButton.translatesAutoresizingMaskIntoConstraints = false
//
//        view.addSubview(appleButton)
//        NSLayoutConstraint.activate([
//            loginWithAppleButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            loginWithAppleButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
//            loginWithAppleButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
//
//        ])
        
    }

    @IBAction func loginTouched(_ sender: UIButton) {
    }
    @IBAction func forgotPasswordTouched(_ sender: UIButton) {
    }
    @IBAction func loginWithAppleTouched(_ sender: UIButton) {
    }
    @IBAction func signUpTouched(_ sender: UIButton) {
    }
    
    
}
