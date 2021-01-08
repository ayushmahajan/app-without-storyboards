//
//  UINavigationController+.swift
//  app-without-storyboard
//
//  Created by ayush mahajan on 06/01/21.
//

import UIKit

extension UINavigationController {
    func applyStyling(to viewController: UIViewController, color: UIColor, heading: String) {
        navigationBar.barTintColor = color
        navigationBar.barStyle = .black
        navigationBar.isTranslucent = false
        
        let title = UILabel()
        title.text = heading
        title.textColor = .white
        title.font = UIFont.italicSystemFont(ofSize: 18)
        
        viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: title)
    }
}

