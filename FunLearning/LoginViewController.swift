//
//  ViewController.swift
//  FunLearning
//
//  Created by Mac on 11/08/20.
//  Copyright © 2020 in.bitcode. All rights reserved.
//

import UIKit
import Firebase
 
  


class LoginViewController: UIViewController {

    @IBOutlet weak var userTextfield: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
    
        Auth.auth().signIn(withEmail: userTextfield.text!, password: passwordTextField.text!)
        {
            (result, error) in
            if (error != nil){
                print(error?.localizedDescription)
            } else {
                print("Success")
            }
        }
    }
    
    
    
    @IBAction func signupButtonPressed(_ sender: UIButton) {
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

