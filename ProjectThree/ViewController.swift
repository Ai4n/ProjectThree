//
//  ViewController.swift
//  ProjectThree
//
//  Created by Mac OS on 9/1/20.
//  Copyright © 2020 Mac OS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let array1: [String] = ["day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority"]
    let array2: [String] = ["monday", "tuesday", "wendsday", "thurday",
    "monday", "tuesday", "wendsday", "thurday", "monday", "tuesday", "wendsday", "thurday"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return array1.count
        case 1: return array2.count
        default: return 0
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDo", for: indexPath) as! ToDoCell
        let title: String
        switch indexPath.section {
        case 0:
            title = array1[indexPath.row]
        case 1:
            title = array2[indexPath.row]
            cell.backgroundColor = .blue
            cell.imageRight.image = nil
        default:
            title = ""
        }
        
        cell.titleLable?.text = title
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
}
