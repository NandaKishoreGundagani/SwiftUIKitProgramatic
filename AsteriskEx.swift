//
//  File.swift
//  GroceryApp
//
//  Created by APPLE on 9/4/23.
//

import Foundation
import UIKit

extension UILabel {

        func addRequiredAsterisk()  {
              let asterisk =  UILabel()
              let string = ("*" as NSString).range(of: "*")
              asterisk.frame =  CGRect.init(x: self.frame.size.width + 130, y: self.frame.size.height/2, width: 10, height: 20)
              let redAst = NSMutableAttributedString(string: "*", attributes: [.foregroundColor: UIColor.black ])
            redAst.addAttribute(NSAttributedString.Key.font,value:UIFont.systemFont(ofSize: 20, weight: .regular), range: string)
              asterisk.attributedText = redAst
              self.addSubview(asterisk)
          }
//    func addRequiredAsterisk() {
//        let asterisk = UILabel()
//        asterisk.text = "*"
//        asterisk.textColor = UIColor.black
//        asterisk.font = UIFont.systemFont(ofSize: 12, weight: .regular)
//        asterisk.sizeToFit()
//
//        let width = asterisk.frame.size.width
//        let height = asterisk.frame.size.height
//
//        let x = self.frame.origin.x + self.frame.size.width + 5 // Adjust the position as needed
//        let y = self.frame.origin.y + (self.frame.size.height - height) / 2
//
//        asterisk.frame = CGRect(x: x, y: y, width: width, height: height)
//
//        self.superview?.addSubview(asterisk)
//    }
}

