//
//  ViewController.swift
//  greatnumbergame
//
//  Created by Bobbie on 7/8/20.
//  Copyright © 2020 Bobbie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var complete: UILabel!
    
    @IBOutlet weak var box: UIView!
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var popUp: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func submit(_ sender: UIButton) {
        let compNum = Int.random(in: 1...101)
        popUp.isHidden = false
        complete.text = "You guessed: " + input.text! + "\nComputer guessed: " + String (compNum)
        if compNum == Int (input.text!) ?? 0{
            box.backgroundColor = UIColor.green
        }
        else {
            box.backgroundColor = UIColor.red
        }
        input.text = " "
    }
    
    @IBAction func rightBut(_ sender: UIButton) {
        popUp.isHidden = true
    }
    @IBAction func leftButt(_ sender: UIButton) {
        popUp.isHidden = true
    }
    
}
