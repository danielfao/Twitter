//
//  Tweet.swift
//  Twitter
//
//  Created by Daniel Oliveira on 8/3/17.
//  Copyright © 2017 Daniel Oliveira. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Tweet {
    let user: User
    let message: String
    
    init(json: JSON) {
        let userJson = json["user"]
        self.user = User(json: userJson)
        
        self.message = json["message"].stringValue
    }
}
