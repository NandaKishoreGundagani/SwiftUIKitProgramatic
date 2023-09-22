//
//  BackButtonEx.swift
//  GroceryApp
//
//  Created by APPLE on 7/10/23.
//

import Foundation
import UIKit

extension UIViewController {
    
    
    func addBackButton(withTitle title: String) {
        
        navigationController?.navigationBar.barTintColor = UIColor.white // Replace with the desired color
        
        let backButton = UIButton(type: .custom)
        backButton.setImage(UIImage(named: "arrow.backward"), for: .normal)
        backButton.setTitle(title, for: .normal)
        backButton.setTitleColor(.black, for: .normal)
        backButton.titleLabel?.font = UIFont.semiBold.withSize(16)
        backButton.tintColor = .black
        backButton.sizeToFit()
        //        backButton.backgroundColor = UIColor.white // Replace with the desired color
        let spacerWidth: CGFloat = 15 // Adjust this value to control the space
        backButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: spacerWidth)
        
        let backView = UIView()
        backView.addSubview(backButton)
        backView.frame = CGRect(x: 0, y: 0, width: backButton.frame.size.width + spacerWidth, height: backButton.frame.size.height)

        backButton.frame = backView.bounds
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        
        let backButtonItem = UIBarButtonItem(customView: backButton)
        navigationItem.leftBarButtonItem = backButtonItem
    }
    
    @objc func backButtonTapped() {
        
        let vc = TabBarViewController()
        self.tabBarController?.tabBar.isHidden = true
        self.navigationController?.navigationBar.isHidden = true
        navigationController?.pushViewController(vc, animated: true)
    }
        func navigationController(_ navigationController: UINavigationController, shouldPop viewController: UIViewController) -> Bool {
             // Prevent the view controller from being popped
             return false
         }
}
