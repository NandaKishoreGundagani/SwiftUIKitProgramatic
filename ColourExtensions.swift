//
//  ColourExtensions.swift
//  GroceryApp
//
//  Created by APPLE on 8/17/23.
//

import UIKit

extension UIColor {
    // Static properties for asset colors
    static var thickGreen: UIColor {
        return UIColor(named: "thickGreen") ?? UIColor.thickGreen
    }
    
    static var ashColour: UIColor {
        return UIColor(named: "AshColour") ?? UIColor.ashColour
    }
    
    static var grey: UIColor {
        return UIColor(named: "grey") ?? UIColor.grey
    }
    
    static var lightGreen: UIColor {
        return UIColor(named: "lightGreen") ?? UIColor.lightGreen
    }
    static var veryLightGreen: UIColor {
        return UIColor(named: "vlightGreen") ?? UIColor.veryLightGreen
    }
    static var veryLightWhite: UIColor {
        return UIColor(named: "VeryLightWhite") ?? UIColor.white
    }
    static var lightGrey: UIColor {
        return UIColor(named: "LightGrey") ?? UIColor.grey
    }
    static var viewAllRed: UIColor {
        return UIColor(named: "viewallred") ?? UIColor.red
    }
   
    
    // Add more colors following the same pattern
}
