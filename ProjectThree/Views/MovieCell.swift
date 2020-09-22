//
//  MovieCell.swift
//  ProjectThree
//
//  Created by Mac OS on 9/22/20.
//  Copyright © 2020 Mac OS. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func configure(with movie: Movie) {
        titleLabel.text = movie.name
        descriptionLabel.text = movie.description
    }
}
