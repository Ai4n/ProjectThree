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
    let array: [String] = ["day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done", "day","priority", "today", "in process", "done"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
       // tableView.register(ToDoCell.self, forCellReuseIdentifier: "ToDo")
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDo", for: indexPath) as! ToDoCell
        let title = array[indexPath.row]
        cell.titleLable?.text = title
        return cell
    }
    
    
}
