//
//  StatisticsViewCell.swift
//  StatisticsForSber
//
//  Created by Алексей ]Чанов on 16/11/2019.
//  Copyright © 2019 Алексей Чанов. All rights reserved.
//

import UIKit

class StatisticsViewCell: UICollectionViewCell {
    
    
    static let reuseId = "StatisticsViewCell"
    
    let view = GradientView()
    var widthView: CGFloat = 0
    let label = UILabel()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        label.textColor = .black
        label.font = .systemFont(ofSize: 24)
        
        view.animateGradient()
        view.layer.cornerRadius = contentView.frame.height/20
        
        contentView.addSubview(label)
        contentView.addSubview(view)
        label.translatesAutoresizingMaskIntoConstraints = false
        view.translatesAutoresizingMaskIntoConstraints = false
        view.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {
        
        view.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
        view.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
        view.heightAnchor.constraint(greaterThanOrEqualToConstant: contentView.frame.height/2).isActive = true
        view.widthAnchor.constraint(greaterThanOrEqualToConstant: CGFloat(widthView)).isActive = true
        
        label.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 2).isActive = true
        label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
        label.heightAnchor.constraint(greaterThanOrEqualToConstant: contentView.frame.height/2).isActive = true
        label.widthAnchor.constraint(greaterThanOrEqualToConstant: contentView.frame.width/2).isActive = true
        super.updateConstraints()
        
    }
    
    
}
