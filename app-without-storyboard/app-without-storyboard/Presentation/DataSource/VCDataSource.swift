//
//  VCDataSource.swift
//  app-without-storyboard
//
//  Created by ayush mahajan on 06/01/21.
//

import UIKit

class VCDataSource: NSObject, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CharactersCollectionViewCell", for: indexPath)
        return cell
    }
}
