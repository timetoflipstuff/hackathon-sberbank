//
//  SpendingsViewController.swift
//  hackaton-sberbank
//
//  Created by Alexander on 16.11.2019.
//  Copyright © 2019 Sberbank-hackaton. All rights reserved.
//
import UIKit

class SpendingsViewController: UITableViewController {
    
    private let cellId = "cellId"
    
    var spendings = [SpendingsInformation]()
    
    override func viewDidLoad() {
        tableView.register(SpendingsTableViewCell.self, forCellReuseIdentifier: cellId)
        generateSpendings()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return spendings.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! SpendingsTableViewCell
        cell.spending = spendings[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    private func generateSpendings() {
        spendings.append(SpendingsInformation(place: "Teremok", price: 2.99, profilePic: "baby"))
        spendings.append(SpendingsInformation(place: "ASOS", price: 32.99, profilePic: "daughter"))
        spendings.append(SpendingsInformation(place: "Lamoda", price: 67, profilePic: "father"))
        spendings.append(SpendingsInformation(place: "Auchan", price: 12.99, profilePic: "person"))
        spendings.append(SpendingsInformation(place: "Sberbank", price: 8.41, profilePic: "mother"))
        spendings.append(SpendingsInformation(place: "Teremok", price: 3.11, profilePic: "person"))
        spendings.append(SpendingsInformation(place: "KFC", price: 9.13, profilePic: "daughter"))
        spendings.append(SpendingsInformation(place: "McDonald's", price: 0.99, profilePic: "daughter"))
        spendings.shuffle()
    }
    
}
