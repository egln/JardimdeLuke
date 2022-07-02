//
//  Colors.swift
//  Jardim de Luke
//
//  Created by egln on 16/05/22.
//

// How to use:
//hexStringToUIColor(hex: "#code")

import Foundation
import UIKit


//Função para usar cores em hexadecimal
func hexStringToUIColor (hex: String) -> UIColor {
    var cString: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }

    if ((cString.count) != 6) {
        return UIColor.gray
    }

    var rgbValue:UInt64 = 0
    Scanner(string: cString).scanHexInt64(&rgbValue)

    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
        
        // Como usar:
        // hexStringToUIColor(hex: "#code")
    )
}

