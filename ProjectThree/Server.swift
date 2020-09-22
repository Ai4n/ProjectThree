//
//  Server.swift
//  ProjectThree
//
//  Created by Mac OS on 9/17/20.
//  Copyright © 2020 Mac OS. All rights reserved.
//

import Foundation

class Server {
    static func getMovies(completion: @escaping ([Movie]) -> Void) {
        let data = dataFromInternet.data(using: .utf8)!
        let movies = try! JSONDecoder().decode([Movie].self, from: data)
        DispatchQueue.global().asyncAfter(deadline: .now() + 2){
            completion(movies)
        }
    }
}
private let dataFromInternet = """
 [
    {
      "iconUrl": "https://i.pinimg.com/originals/03/5a/1e/035a1e61ba9e4b1fd767bf8066c6f45e.jpg",
      "name": "Alien",
      "description": "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. ",
      "likes": 100
    },
    {
      "iconUrl": "https://i.pinimg.com/originals/03/5a/1e/035a1e61ba9e4b1fd767bf8066c6f45e.jpg",
      "name": "Alien",
      "description": "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. ",
      "likes": 100
    },
    {
      "iconUrl": "https://i.pinimg.com/originals/03/5a/1e/035a1e61ba9e4b1fd767bf8066c6f45e.jpg",
      "name": "Alien",
      "description": "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. ",
      "likes": 100
    },
    {
      "iconUrl": "https://i.pinimg.com/originals/03/5a/1e/035a1e61ba9e4b1fd767bf8066c6f45e.jpg",
      "name": "Alien",
      "description": "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. ",
      "likes": 100
    },
    {
      "iconUrl": "https://i.pinimg.com/originals/03/5a/1e/035a1e61ba9e4b1fd767bf8066c6f45e.jpg",
      "name": "Alien",
      "description": "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. ",
      "likes": 100
    }
  ]
"""

