//
//  ViewController.swift
//  DiceRoll
//
//  Created by craterzone on 03/02/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var diceViewOne: UIImageView!
    
    @IBOutlet weak var diceViewTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceViewOne.image = #imageLiteral(resourceName: "six")
        diceViewTwo.image = #imageLiteral(resourceName: "six")
    }
    
    
    @IBAction func rollDice(_ sender: UIButton) {
        let dices = [#imageLiteral(resourceName: "one"), #imageLiteral(resourceName: "two"), #imageLiteral(resourceName: "three"), #imageLiteral(resourceName: "four"), #imageLiteral(resourceName: "five"), #imageLiteral(resourceName: "six")]
        diceViewOne.image = dices[Int.random(in: 0...5)]
        diceViewTwo.image = dices[Int.random(in: 0...5)]
        
    }
    

}

