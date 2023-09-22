//
//  FontExtension.swift
//  GroceryApp
//
//  Created by APPLE on 8/17/23.
//

import UIKit

extension UIFont {
    // Custom font methods and properties go here
    
    static func myCustomFont(size: CGFloat) -> UIFont {
        return UIFont(name: "Inter-VariableFont_slnt,wght", size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
    static var interBlack: UIFont {
        return UIFont(name: "Inter-Black", size: UIFont.systemFontSize) ?? UIFont.boldSystemFont(ofSize: UIFont.systemFontSize)
    }
    static var interBold: UIFont {
        return UIFont(name: "Inter-Bold", size: UIFont.systemFontSize) ?? UIFont.boldSystemFont(ofSize: UIFont.systemFontSize)
    }
    static var extraBold: UIFont {
        return UIFont(name: "Inter-ExtraBold", size: UIFont.systemFontSize) ?? UIFont.boldSystemFont(ofSize: UIFont.systemFontSize)
    }
    static var extraLight: UIFont {
        return UIFont(name: "Inter-ExtraLight", size: UIFont.systemFontSize) ?? UIFont.boldSystemFont(ofSize: UIFont.systemFontSize)
    }
    static var interLight: UIFont {
        return UIFont(name: "Inter-Light", size: UIFont.systemFontSize) ?? UIFont.boldSystemFont(ofSize: UIFont.systemFontSize)
    }
    static var interMedium: UIFont {
        return UIFont(name: "Inter-Medium", size: UIFont.systemFontSize) ?? UIFont.boldSystemFont(ofSize: UIFont.systemFontSize)
    }
    static var interRegular: UIFont {
        return UIFont(name: "Inter-Regular", size: UIFont.systemFontSize) ?? UIFont.boldSystemFont(ofSize: UIFont.systemFontSize)
    }
    static var semiBold: UIFont {
        return UIFont(name: "Inter-SemiBold", size: UIFont.systemFontSize) ?? UIFont.boldSystemFont(ofSize: UIFont.systemFontSize)
    }
    static var interThin: UIFont {
        return UIFont(name: "Inter-thin", size: UIFont.systemFontSize) ?? UIFont.boldSystemFont(ofSize: UIFont.systemFontSize)
    }
   
}
