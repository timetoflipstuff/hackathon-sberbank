//
//  SpendingsTableViewCell.swift
//  hackaton-sberbank
//
//  Created by Alexander on 16.11.2019.
//  Copyright © 2019 Sberbank-hackaton. All rights reserved.
//

import UIKit

class SpendingsTableViewCell: UITableViewCell {
    
    var spending: SpendingsInformation? {
        didSet {
            guard let price = spending?.price, let image = spending?.profilePic, let place = spending?.place else { return }
            personImageView.image = UIImage(named: image)
            priceLabel.text = "$\(price)"
            placeLabel.text = place
        }
    }
    
    let personImageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .pureGreen
        iv.clipsToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.layer.cornerRadius = 32
        return iv
    }()
    
    let placeLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24)
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let stackView = UIStackView(arrangedSubviews: [personImageView, placeLabel, priceLabel])
        stackView.axis = .horizontal
        
        addSubview(stackView)
        
        personImageView.heightAnchor.constraint(equalToConstant: 64).isActive = true
        personImageView.widthAnchor.constraint(equalToConstant: 64).isActive = true
        
        placeLabel.heightAnchor.constraint(equalToConstant: 64).isActive = true
        placeLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        priceLabel.heightAnchor.constraint(equalToConstant: 64).isActive = true
        priceLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 4
        stackView.distribution = .fill

        stackView.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8).isActive = true

        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

