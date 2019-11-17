//
//  ChatTableViewCell.swift
//  hackaton-sberbank
//
//  Created by Alexander on 17.11.2019.
//  Copyright © 2019 Sberbank-hackaton. All rights reserved.
//

import UIKit

class ChatTableViewCell: UITableViewCell {
    
    var message: Message? {
        didSet {
            guard let imageName = message?.senderPictureName, let message = message?.messageBody else { return }
            personImageView.image = UIImage(named: imageName)
            messageLabel.text = message
        }
    }
    
    let personImageView : UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .pureGreen
        iv.clipsToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.layer.cornerRadius = 35
        return iv
    }()
    
    let messageLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20)
        label.numberOfLines = 0
        label.textColor = .darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(personImageView)
        addSubview(messageLabel)
        
        personImageView.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        personImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
        personImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5).isActive = true
        personImageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        
        messageLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        messageLabel.leadingAnchor.constraint(equalTo: personImageView.trailingAnchor, constant: 8).isActive = true
        messageLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        messageLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
