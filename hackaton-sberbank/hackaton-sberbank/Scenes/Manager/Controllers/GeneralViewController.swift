//
//  GeneralViewController.swift
//  hackaton-sberbank
//
//  Created by Alexander on 16.11.2019.
//  Copyright © 2019 Sberbank-hackaton. All rights reserved.
//

import UIKit

class GeneralViewController: UIViewController {
    
    var peopleScrollCollection: TopBarCollectionViewController!
    var spendingsTableViewController: SpendingsViewController!
    
    let balance: UILabel = {
        let label = UILabel()
        label.text = "$ 5004,89"
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 60)
        label.backgroundColor = .pureGreen
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        peopleScrollCollection = TopBarCollectionViewController(collectionViewLayout: layout)
        spendingsTableViewController = SpendingsViewController()
        
        setupBasicUI()
        
    }
    
    
    private func setupBasicUI() {
        view.backgroundColor = .white
        
        view.addSubview(peopleScrollCollection.view)
        peopleScrollCollection.view.translatesAutoresizingMaskIntoConstraints = false
        peopleScrollCollection.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        peopleScrollCollection.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        peopleScrollCollection.view.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        peopleScrollCollection.view.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        view.addSubview(balance)
        balance.topAnchor.constraint(equalTo: peopleScrollCollection.view.bottomAnchor, constant: 0).isActive = true
        balance.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        balance.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        balance.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        view.addSubview(spendingsTableViewController.view)
        spendingsTableViewController.view.translatesAutoresizingMaskIntoConstraints = false
        spendingsTableViewController.view.topAnchor.constraint(equalTo: balance.bottomAnchor, constant: 0).isActive = true
        spendingsTableViewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        spendingsTableViewController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        spendingsTableViewController.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
    }
    
    
    
    
}

