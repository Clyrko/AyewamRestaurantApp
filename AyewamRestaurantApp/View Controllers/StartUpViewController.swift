//
//  StartUpViewController.swift
//  AyewamRestaurantApp
//
//  Created by Jay A. on 3/18/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import UIKit

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

        // Do any additional setup after loading the view.
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
