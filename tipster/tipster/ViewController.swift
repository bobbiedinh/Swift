//
//  ViewController.swift
//  tipster
//
//  Created by Bobbie on 7/10/20.
//  Copyright © 2020 Bobbie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var percentOne: UILabel!
    @IBOutlet weak var percentTwo: UILabel!
    @IBOutlet weak var percentThree: UILabel!
    @IBOutlet weak var bill: UILabel!
    
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var addToP: UISlider!
    @IBOutlet weak var groupSize: UISlider!
    
    var addBill = ""
    var firstTip = 0
    var totalCost = 0.00
    var groupCount = 1

    
    @IBOutlet weak var tenTip: UILabel!
    
    @IBOutlet weak var fifTip: UILabel!
    
    @IBOutlet weak var twentyTip: UILabel!
    
    @IBOutlet weak var tenTotal: UILabel!
    @IBOutlet weak var fifTotal: UILabel!
    @IBOutlet weak var twentyTotal: UILabel!
    
    @IBOutlet weak var groupLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        percentOne.text = "%\(String (firstTip))"
        percentTwo.text = "%\(String (firstTip+5))"
        percentThree.text = "%\(String (firstTip+10))"
        tenTip.text = "0.00"
        fifTip.text = "0.00"
        twentyTip.text = "0.00"
        tenTotal.text = "0.00"
        fifTotal.text = "0.00"
        twentyTip.text = "0.00"
        groupLabel.text = "Group Size: \(groupCount)"
    }
    @IBAction func groupSlide(_ sender: UISlider) {
        groupCount = 0
        groupCount += Int (groupSize.value)
        tenTip.text = String(format: "%.2f", ((Double (firstTip)/100)*totalCost) / Double (groupCount))
        fifTip.text = String(format: "%.2f", ((Double((firstTip)+5)/100)*totalCost) / Double (groupCount))
         twentyTip.text = String(format: "%.2f", ((Double((firstTip)+10)/100)*totalCost) / Double (groupCount))
        groupLabel.text = "Group Size: \(groupCount)"
    }
    
    @IBAction func tipSlide(_ sender: UISlider) {
        firstTip = 0
        firstTip +=  Int (addToP.value)
        percentOne.text = "%\(String (firstTip))"
        percentTwo.text = "%\(String (firstTip+5))"
        percentThree.text = "%\(String (firstTip+10))"
        
        tenTip.text = String(format: "%.2f", (Double (firstTip)/100)*totalCost)
        tenTotal.text = String(format: "%.2f", (((Double (firstTip)/100)*totalCost) + totalCost) / Double (groupCount))
        fifTip.text = String(format: "%.2f", (Double ((firstTip)+5)/100)*totalCost)
        fifTotal.text = String(format: "%.2f", (((Double ((firstTip)+5)/100)*totalCost) + totalCost) / Double (groupCount))
        twentyTip.text = String(format: "%.2f", (Double ((firstTip)+10)/100)*totalCost)
        twentyTotal.text = String(format: "%.2f", (((Double ((firstTip)+10)/100)*totalCost) + totalCost) / Double (groupCount))
    }
    @IBAction func reset(_ sender: UIButton) {
        totalCost = 0.00
        addToP.value = 0
        groupSize.value = 1
        groupCount = 1
        firstTip = 0
        addBill = ""
        percentOne.text = "%\(String (firstTip))"
        percentTwo.text = "%\(String (firstTip+5))"
        percentThree.text = "%\(String (firstTip+10))"
        bill.text = "0.00"
        tenTip.text = "0.00"
        fifTip.text = "0.00"
        twentyTip.text = "0.00"
        tenTotal.text = "0.00"
        fifTotal.text = "0.00"
        twentyTotal.text = "0.00"
        groupLabel.text = "Group Size: \(groupCount)"
    }
    @IBAction func buttonClick(_ sender: UIButton) {
        for button in buttons {
            if (button.title(for: .normal) == sender.title(for: .normal)) {
                if button.title(for: .normal) == "." && addBill.contains(".") {
                    
                }
                else {
                    addBill += (button.title(for: .normal)!)
                    totalCost = Double (addBill) ?? 0
//                    bill.text = String(format: "%.2f", totalCost)
                    bill.text = addBill
                }
            }
        }
         tenTip.text = String(format: "%.2f", (Double (firstTip)/100)*totalCost)
               tenTotal.text = String(format: "%.2f", (((Double (firstTip)/100)*totalCost) + totalCost) / Double (groupCount))
               fifTip.text = String(format: "%.2f", (Double ((firstTip)+5)/100)*totalCost)
               fifTotal.text = String(format: "%.2f", (((Double ((firstTip)+5)/100)*totalCost) + totalCost) / Double (groupCount))
               twentyTip.text = String(format: "%.2f", (Double ((firstTip)+10)/100)*totalCost)
               twentyTotal.text = String(format: "%.2f", (((Double ((firstTip)+10)/100)*totalCost) + totalCost) / Double (groupCount))
    }
}
