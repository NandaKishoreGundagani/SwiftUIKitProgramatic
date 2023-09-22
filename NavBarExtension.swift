//
//  NavBarExtension.swift
//  GroceryApp
//
//  Created by APPLE on 8/17/23.
//

import UIKit

extension UINavigationBar {
    func setUpCustomNavigationBar() {
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.configureWithOpaqueBackground()
        navigationBarAppearance.backgroundColor = UIColor.veryLightGreen
        navigationBarAppearance.shadowColor = .clear // Set shadow color to clear

        // Set the title text color for the navigation bar
        navigationBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        // Apply the appearance to the navigation bars
        self.standardAppearance = navigationBarAppearance
        self.scrollEdgeAppearance = navigationBarAppearance
    }
}

