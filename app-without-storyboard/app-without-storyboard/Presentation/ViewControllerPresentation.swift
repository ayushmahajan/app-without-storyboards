//
//  ViewControllerPresentation.swift
//  app-without-storyboard
//
//  Created by ayush mahajan on 06/01/21.
//

import UIKit

class ViewControllerPresentation {
    
    weak var viewController: UIViewController?
    var dataSource = VCDataSource()
    
    var collectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumLineSpacing = 10
        flowLayout.scrollDirection = .vertical
        flowLayout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width) // to get a perfect square
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false // if set to true it will use old system for constraints i.e strut and spring
        collectionView.backgroundColor = .white
        return collectionView
    }()
    
    func displayLayout() {
        guard let controller = viewController else {
            fatalError("Couldn't find the controller.")
        }
        controller.view.addSubview(collectionView)
        
        // Add constraints for collectionView
        collectionView.leadingAnchor.constraint(equalTo: controller.view.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: controller.view.trailingAnchor).isActive = true
        collectionView.topAnchor.constraint(equalTo: controller.view.topAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: controller.view.bottomAnchor).isActive = true
        
        //register the collectionViewCell
        collectionView.register(CharactersCollectionViewCell.self, forCellWithReuseIdentifier: "CharactersCollectionViewCell")
        
        // set collectionView dataSource
        collectionView.dataSource = dataSource
    }
}
