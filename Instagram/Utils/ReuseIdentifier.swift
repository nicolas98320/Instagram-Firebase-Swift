//
//  ReuseIdentifier.swift
//  Instagram
//
//  Created by Nicolas Desormiere on 27/10/18.
//  Copyright © 2018 Nicolas Desormiere. All rights reserved.
//

import Foundation
import UIKit

protocol ReuseIdentifier {
    static var reuseIdentifier: String { get }
}

extension ReuseIdentifier {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UICollectionViewCell: ReuseIdentifier {}
extension UITableViewCell: ReuseIdentifier {}
extension UITableViewHeaderFooterView: ReuseIdentifier {}

