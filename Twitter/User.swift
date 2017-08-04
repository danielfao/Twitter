//
//  User.swift
//  Twitter
//
//  Created by Daniel Oliveira on 8/2/17.
//  Copyright © 2017 Daniel Oliveira. All rights reserved.
//

import UIKit
import SwiftyJSON

struct User {
    let name: String
    let username: String
    let bioText: String
    let profileImage: UIImage
    
    init(json: JSON) {
        self.name = json["name"].stringValue
        self.username = json["username"].stringValue
        self.bioText = json["bio"].stringValue
        self.profileImage = UIImage()
    }
}
