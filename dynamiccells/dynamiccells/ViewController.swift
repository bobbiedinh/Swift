//
//  ViewController.swift
//  dynamiccells
//
//  Created by Bobbie on 7/11/20.
//  Copyright © 2020 Bobbie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tasks = ["Exercise for 30 minutes", "Wireframe for some project", "Do laundry"]

    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var input: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: UIButton) {
        tasks.append(input.text!)
        table.reloadData()
        input.text = ""
    }
}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Section: \(indexPath.section) and Row: \(indexPath.row)")
        tasks.remove(at: indexPath.row)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
            // set text label to the model that is corresponding to the row in array
        cell.textLabel?.text = tasks[indexPath.row]
            // return cell so that Table View knows what to render in each row
        return cell
    }
    
}



