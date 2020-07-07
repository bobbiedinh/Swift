//
//  ViewController.swift
//  call
//
//  Created by Bobbie on 7/7/20.
//  Copyright © 2020 Bobbie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var names: [String] = ["John", "Anmol", "Young", "Bobbie", "Rachelle"]

    @IBOutlet weak var numb: UILabel!
    @IBOutlet weak var name: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func call(_ sender: UIButton) {
        var rand = Int.random(in: 0..<5)
        name.text = names[rand]
        rand = Int.random(in: 0..<5)
        numb.text = String (rand+1)
        if rand+1<3 {
            numb.textColor = UIColor.red
        }
        else if rand+1>2 && rand+1<5 {
            numb.textColor = UIColor.orange
        }
        else {
            numb.textColor = UIColor.green
        }
    }
    
}

