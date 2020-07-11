//
//  ViewController.swift
//  tictactoe
//
//  Created by Bobbie on 7/9/20.
//  Copyright © 2020 Bobbie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var turn = 0
    var player = ""
    var winner = false
    var playerOne = [UIButton]()
    var playerTwo = [UIButton]()
    
    @IBOutlet weak var winnerName: UILabel!
    @IBOutlet var buttons: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()
        var counter = 0
        for button in buttons {
            button.tag = counter
            counter+=1
        }
    }
    
    @IBAction func reset(_ sender: UIButton) {
        for button in buttons {
            button.backgroundColor = UIColor.gray
        }
        winnerName.text = "Play the game!"
        winner = false
        playerOne = []
        playerTwo = []
        turn = 0
    }
    func checkGame(){
        if (playerOne.contains(buttons[0]) && playerOne.contains(buttons[1]) && playerOne.contains(buttons[2])) || (playerOne.contains(buttons[3]) && playerOne.contains(buttons[4]) && playerOne.contains(buttons[5])) || (playerOne.contains(buttons[6]) && playerOne.contains(buttons[7]) && playerOne.contains(buttons[8])) || (playerOne.contains(buttons[0]) && playerOne.contains(buttons[3]) && playerOne.contains(buttons[6])) || (playerOne.contains(buttons[1]) && playerOne.contains(buttons[4]) && playerOne.contains(buttons[7])) || (playerOne.contains(buttons[2]) && playerOne.contains(buttons[5]) && playerOne.contains(buttons[8])) || (playerOne.contains(buttons[0]) && playerOne.contains(buttons[4]) && playerOne.contains(buttons[8])) || (playerOne.contains(buttons[2]) && playerOne.contains(buttons[4]) && playerOne.contains(buttons[6])) {
            winner = true
            winnerName.text = "Winner: Player One"
        }
        else if (playerTwo.contains(buttons[0]) && playerTwo.contains(buttons[1]) && playerTwo.contains(buttons[2])) || (playerTwo.contains(buttons[3]) && playerTwo.contains(buttons[4]) && playerTwo.contains(buttons[5])) || (playerTwo.contains(buttons[6]) && playerTwo.contains(buttons[7]) && playerTwo.contains(buttons[8])) || (playerTwo.contains(buttons[0]) && playerTwo.contains(buttons[3]) && playerTwo.contains(buttons[6])) || (playerTwo.contains(buttons[1]) && playerTwo.contains(buttons[4]) && playerTwo.contains(buttons[7])) || (playerTwo.contains(buttons[2]) && playerTwo.contains(buttons[5]) && playerTwo.contains(buttons[8])) || (playerTwo.contains(buttons[0]) && playerTwo.contains(buttons[4]) && playerTwo.contains(buttons[8])) || (playerTwo.contains(buttons[2]) && playerTwo.contains(buttons[4]) && playerTwo.contains(buttons[6])) {
            winner = true
            winnerName.text = "Winner: Player Two"
        }
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        if(!winner) {
            if turn%2 == 0 {
                player = "Player One"
            }
            else {
                player = "Player Two"
            }
            for button in buttons {
                if (button.tag == sender.tag) && (button.backgroundColor != UIColor.red && button.backgroundColor != UIColor.blue) {
                    if player == "Player One" {
                        button.backgroundColor = UIColor.red
                        playerOne.append(button)
                        winnerName.text = "Player Two"
                    }
                    else {
                        button.backgroundColor = UIColor.blue
                        playerTwo.append(button)
                        winnerName.text = "Player One"
                    }
                    turn+=1
                }
            }
        }
        else {
            print("adasds")
        }
        checkGame()
    }
}
