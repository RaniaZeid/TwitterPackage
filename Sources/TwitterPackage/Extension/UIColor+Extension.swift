//
//  File.swift
//  
//
//  Created by raniazeid on 16/11/2022.
//

import Foundation
import UIKit
extension UIColor {
    public enum TwitterColor {
        static let whiteColor = UIColor.rgb(red: 255, green: 255, blue: 255)
        static let whiteTrans = UIColor.rgb(red: 255, green: 255, blue: 255, alpha: 0.9)
        static let searchBar = UIColor.rgb(red: 68, green: 78, blue: 114)
        static let textDark = UIColor.rgb(red: 0.27, green: 0.31, blue: 0.45)
        static let textFade = UIColor.rgb(red: 0.51, green: 0.55, blue: 0.67)
        static let babyBlue = UIColor.rgb(red: 230, green: 246, blue: 254)
        static let mainTweetColor = UIColor.rgb(red: 3, green: 169, blue: 244)
        static let darkGreen = UIColor.rgb(red: 0, green: 112, blue: 1)
        static let boarderColor = UIColor.rgb(red: 237, green: 237, blue: 237)
        static let mainColor = UIColor(named: "blue")
    }
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 1) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
}
