//
//  SpendingsTableViewController.swift
//  hackaton-sberbank
//
//  Created by Alex Mikhaylov on 16/11/2019.
//  Copyright © 2019 Sberbank-hackaton. All rights reserved.
//

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
    
    override func viewDidLoad() {
        tableView.register(SpendingsTableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! SpendingsTableViewCell
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}
