//
//  User.swift
//  Instagram
//
//  Created by Nicolas Desormiere on 27/10/18.
//  Copyright © 2018 Nicolas Desormiere. All rights reserved.
//

import Foundation

struct User {
    let username: String
    let profileImageUrl: String
    
    init(dictionary: [String: Any]) {
        self.username = dictionary["username"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"]  as? String ?? ""
    }
}
