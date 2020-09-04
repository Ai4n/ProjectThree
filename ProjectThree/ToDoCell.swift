//
//  ToDoCell.swift
//  ProjectThree
//
//  Created by Mac OS on 9/1/20.
//  Copyright © 2020 Mac OS. All rights reserved.
//

import UIKit

class ToDoCell: UITableViewCell {

    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var imageRight: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        backgroundColor = nil
        imageRight.image = UIImage(named: "circle")
    }
    
}
