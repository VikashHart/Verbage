//
//  UIColor+Hex.swift
//  Verbage
//
//  Created by C4Q on 4/22/18.
//  Copyright © 2018 Vikash Hart. All rights reserved.
//

import UIKit

class HexStringToUIColor {
    
    static let appGradient = [HexStringToUIColor.convert(hex: "#2b5876"),
                              HexStringToUIColor.convert(hex: "#4e4376"),
                              HexStringToUIColor.convert(hex: "#000000")]
    
    static func convert(hex: String, alpha: CGFloat = 1) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor (
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(alpha)
        )
    }
}
