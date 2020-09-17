//
//  Movie.swift
//  ProjectThree
//
//  Created by Mac OS on 9/17/20.
//  Copyright © 2020 Mac OS. All rights reserved.
//

import Foundation

struct Movie: Decodable {
    let iconUrl: String
    let name: String
    let description: String
    let likes: Int
}
