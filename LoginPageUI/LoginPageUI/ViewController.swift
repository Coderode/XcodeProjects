//
//  ViewController.swift
//  LoginPageUI
//
//  Created by craterzone on 04/02/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: MyTextField!
    
    
    @IBOutlet weak var passwordTextField: MyTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        emailTextField.text = ""
        passwordTextField.text = ""
    }
    
    


}

