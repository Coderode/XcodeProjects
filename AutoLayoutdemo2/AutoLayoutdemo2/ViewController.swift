//
//  ViewController.swift
//  AutoLayoutdemo2
//
//  Created by craterzone on 09/02/21.
//

import UIKit

class ViewController: UIViewController {
    
        
    @IBOutlet weak var centerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        centerView.layer.cornerRadius = centerView.frame.size.height/2
    }


}

