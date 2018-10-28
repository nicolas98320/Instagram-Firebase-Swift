//
//  UIColor.swift
//  Instagram
//
//  Created by Nicolas Desormiere on 5/9/18.
//  Copyright © 2018 Nicolas Desormiere. All rights reserved.
//

import UIKit

public extension UIColor {
    
    public convenience init?(string: String, alpha: CGFloat = 1) {
        let hexString = string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        
        let r, g, b, a: CGFloat
        
        let start = hexString.index(hexString.startIndex, offsetBy: hexString.hasPrefix("#") ? 1 : 0)
        let hexColor = String(hexString[start...])
        
        if hexColor.count == 6 {
            let scanner = Scanner(string: hexColor)
            var hexNumber: UInt64 = 0
            
            if scanner.scanHexInt64(&hexNumber) {
                r = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                g = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                b = CGFloat(hexNumber & 0x000000ff) / 255
                
                self.init(red: r, green: g, blue: b, alpha: alpha)
                return
            }
        }
        
        if hexColor.count == 8 {
            let scanner = Scanner(string: hexColor)
            var hexNumber: UInt64 = 0
            
            if scanner.scanHexInt64(&hexNumber) {
                r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                a = CGFloat(hexNumber & 0x000000ff) / 255
                
                self.init(red: r, green: g, blue: b, alpha: a)
                return
            }
        }
        
        return nil
    }
    
    public static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}

