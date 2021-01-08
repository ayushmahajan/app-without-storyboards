//
//  CharactersCollectionViewCell.swift
//  app-without-storyboard
//
//  Created by ayush mahajan on 06/01/21.
//

import UIKit

class CharactersCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var characterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .yellow
        imageView.layer.cornerRadius = 15
        return imageView
    }()
    
    var characterNameView: UIView = {
       let containerView = UIView()
        containerView.backgroundColor = .black
        containerView.alpha = 0.7
        containerView.translatesAutoresizingMaskIntoConstraints = false
        return containerView
    }()
    
    var characterNameLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.italicSystemFont(ofSize: 30)
        label.textColor = .white
        label.text = "Label"
        return label
    }()
    
    private func setupCell() {
        // Add ImageView
        contentView.addSubview(characterImageView)
        
        // Add constraints
        characterImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        characterImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        characterImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        characterImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        
        // Add containerView
        characterImageView.addSubview(characterNameView)
        
        // Add constraints
        characterNameView.leadingAnchor.constraint(equalTo: characterImageView.leadingAnchor).isActive = true
        characterNameView.trailingAnchor.constraint(equalTo: characterImageView.trailingAnchor).isActive = true
        characterNameView.bottomAnchor.constraint(equalTo: characterImageView.bottomAnchor).isActive = true
        characterNameView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        // Add label
        characterNameView.addSubview(characterNameLabel)
        
        // Add Constraints
        characterNameLabel.leadingAnchor.constraint(equalTo: characterNameView.leadingAnchor, constant: 20).isActive = true
        characterNameLabel.trailingAnchor.constraint(equalTo: characterNameView.trailingAnchor, constant: -20).isActive = true
        characterNameLabel.centerYAnchor.constraint(equalTo: characterNameView.centerYAnchor).isActive = true
    }
}
