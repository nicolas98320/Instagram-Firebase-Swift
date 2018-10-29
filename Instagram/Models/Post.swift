//
//  Post.swift
//  Instagram
//
//  Created by Nicolas Desormiere on 29/10/18.
//  Copyright © 2018 Nicolas Desormiere. All rights reserved.
//

import Foundation

struct Post {
    let imageUrl: String
    init(dictionary: [String: Any]) {
        self.imageUrl = dictionary["imageUrl"] as? String ?? ""
    }
}
