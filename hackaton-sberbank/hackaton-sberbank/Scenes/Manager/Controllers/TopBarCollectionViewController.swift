//
//  TopBarCollectionViewController.swift
//  hackaton-sberbank
//
//  Created by Alexander on 16.11.2019.
//  Copyright © 2019 Sberbank-hackaton. All rights reserved.
//

import UIKit

class TopBarCollectionViewController: UICollectionViewController {
    
    private let cellId = "cellId"
    
    var people = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generatePersons()
        
        collectionView.backgroundColor = .white
        collectionView.register(PeopleCollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return people.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! PeopleCollectionViewCell
        cell.person = people[indexPath.row]
        return cell
    }
    
    private func generatePersons() {
        people.append(Person(profilePic: "daughter"))
        people.append(Person(profilePic: "person"))
        people.append(Person(profilePic: "son"))
        people.append(Person(profilePic: "mother"))
        people.append(Person(profilePic: "father"))
        people.shuffle()
    }

}


extension TopBarCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 10, left: 10, bottom: 10, right: 10)
    }
    
}
