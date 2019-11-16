//
//  PeopleCollectionViewCell.swift
//  hackaton-sberbank
//
//  Created by Alexander on 16.11.2019.
//  Copyright © 2019 Sberbank-hackaton. All rights reserved.
//

import UIKit

class PeopleCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .green
        layer.cornerRadius = frame.width / 2
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
