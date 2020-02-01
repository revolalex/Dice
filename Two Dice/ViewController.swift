//
//  ViewController.swift
//  Two Dice
//
//  Created by Alexandre RODRIGUEZ on 01/02/2020.
//  Copyright © 2020 Alexandre Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceRoll1: UIImageView!
    
    
    @IBOutlet weak var diceRoll2: UIImageView!
    
    func diceImageChange() {
        diceRoll2.image = UIImage.init(named: "dice\(randomDice())")
        diceRoll1.image = UIImage.init(named: "dice\(randomDice())")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageChange()
    }
    //shake for roll dice
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        diceImageChange()
    }
    
    @IBAction func rollButonClick(_ sender: Any) {
        diceImageChange() 
    }
    
    
    
    private func randomDice() -> Int {
        return Int.random(in: 1...6)
    }


}

