//
//  AccountViewCell.swift
//  hackaton-sberbank
//
//  Created by Alex Mikhaylov on 16/11/2019.
//  Copyright © 2019 Sberbank-hackaton. All rights reserved.
//

import UIKit

class AccountViewCell: UITableViewCell {
    
    public static let reuseId = "activeMemberCell"
    
    public let nameLabel = UILabel()
    public let balanceLabel = UILabel()
    
    public let monExpLabel = UILabel()
    public let incomeLabel = UILabel()
    public let limitLabel = UILabel()
    
    public var imgView = UIImageView()
    
    var stackView: UIStackView!
    
    var subStackView: UIStackView!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        imgView.backgroundColor = .green
        imgView.layer.cornerRadius = 36
        imgView.layer.masksToBounds = true
        
        stackView = UIStackView(arrangedSubviews: [nameLabel, balanceLabel])
        stackView.axis = .vertical
        
        subStackView = UIStackView(arrangedSubviews: [incomeLabel, monExpLabel, limitLabel])
        subStackView.axis = .vertical
        
        balanceLabel.textColor = .pureGreen
        
        monExpLabel.textColor = .pureGreen
        incomeLabel.textColor = .pureGreen
        limitLabel.textColor = .pureGreen
        
        imgView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        balanceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        monExpLabel.translatesAutoresizingMaskIntoConstraints = false
        incomeLabel.translatesAutoresizingMaskIntoConstraints = false
        limitLabel.translatesAutoresizingMaskIntoConstraints = false
        subStackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.spacing = 8
        stackView.distribution = .fillEqually
        
        subStackView.distribution = .fillEqually
        
        subStackView.backgroundColor = .brown
        
        addSubview(imgView)
        addSubview(stackView)
        addSubview(subStackView)
        
        imgView.topAnchor.constraint(equalTo: topAnchor, constant: 14).isActive = true
        imgView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14).isActive = true
        imgView.heightAnchor.constraint(equalToConstant: 72).isActive = true
        imgView.widthAnchor.constraint(equalTo: imgView.heightAnchor, multiplier: 1).isActive = true
        
        clipsToBounds = true
        
        stackView.topAnchor.constraint(equalTo: topAnchor, constant: 24).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 52).isActive = true
        stackView.leadingAnchor.constraint(equalTo: imgView.trailingAnchor, constant: 8).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8).isActive = true
        
        subStackView.topAnchor.constraint(equalTo: imgView.bottomAnchor, constant: 14).isActive = true
        subStackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        subStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
        subStackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
