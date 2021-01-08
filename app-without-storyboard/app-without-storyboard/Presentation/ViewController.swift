//
//  ViewController.swift
//  app-without-storyboard
//
//  Created by ayush mahajan on 05/01/21.
//

import UIKit

class ViewController: UIViewController {
    
    let presentation = ViewControllerPresentation()

    override func viewDidLoad() {
        super.viewDidLoad()
        applyStyling()
        setup()
    }
    
    private func setup() {
        presentation.viewController = self
        presentation.displayLayout()
    }
    
    fileprivate func applyStyling() {
        navigationController?.applyStyling(to: self, color: .red, heading: "Comic Characters")
    }
}

