//
//  User.swift
//  Instagram
//
//  Created by Nicolas Desormiere on 27/10/18.
//  Copyright © 2018 Nicolas Desormiere. All rights reserved.
//

import Foundation

struct User {
    
    let uid: String
    let username: String
    let profileImageUrl: String
    
    init(uid: String, dictionary: [String: Any]) {
        self.uid = uid
        self.username = dictionary["username"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"]  as? String ?? ""
    }
}
