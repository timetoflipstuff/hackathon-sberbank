//
//  CircleView.swift
//  hackaton-sberbank
//
//  Created by Алексей ]Чанов on 16/11/2019.
//  Copyright © 2019 Sberbank-hackaton. All rights reserved.
//

import UIKit

class CircleView: UIView {

    
    var label: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        label = UILabel()
        
        label.textAlignment = .center
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 16.0)
        label.backgroundColor = .black
        layer.cornerRadius = 150
        label.textAlignment = .center
        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false

        
        label.center = center
        label.frame = frame
        
                label.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
                label.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
                label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
                label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -0).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
