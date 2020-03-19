//
//  StartUpViewController.swift
//  AyewamRestaurantApp
//
//  Created by Jay A. on 3/19/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import UIKit

class StartUpViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var sloganLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        designSetup()
    }
    
    func designSetup() {
        
        errorLabel.alpha = 0
        loginButton.solidButton()
    }


    @IBAction func forgotPasswordTouched(_ sender: UIButton) {
    }
    
    @IBAction func loginTouched(_ sender: UIButton) {
    }
    
    @IBAction func signUpTouched(_ sender: Any) {
    }
    
}
