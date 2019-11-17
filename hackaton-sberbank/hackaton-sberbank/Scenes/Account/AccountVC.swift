//
//  AccountVC.swift
//  hackaton-sberbank
//
//  Created by Roman Kuzin on 16.11.2019.
//  Copyright © 2019 Sberbank-hackaton. All rights reserved.
//

import UIKit

class AccountVC: UIViewController {
    
    let tableView = UITableView()
    
    var accMembers: [accMember] = []
    
    var thereIsCellTapped = false
    var selectedRowIndex = -1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Account"
        
        view.backgroundColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: nil)
        
        accMembers.append(accMember(isActive: false, name: "Joanne D'Arc", finance: 12000.49, image: "mother", limit: 30000.0, income: 39000.0, monthlyExpenditure: 29999.9))
        accMembers.append(accMember(isActive: false, name: "Alexander Parnev", finance: 3.22, image: "father", limit: 3.22, income: 3.22, monthlyExpenditure: 0.0))
        accMembers.append(accMember(isActive: false, name: "Denis De'Luxe", finance: 100093.0, image: "daughter", limit: 25000.0, income: 30000.0, monthlyExpenditure: 23487.9))
        accMembers.append(accMember(isActive: false, name: "Leonid Derevenskiy", finance: 5.0, image: "son", limit: 5.0, income: 0.0, monthlyExpenditure: 5.0))
        accMembers.append(accMember(isActive: false, name: "Alexandr Gorchilin", finance: 322.0, image: "father", limit: 322.0, income: 18000.0, monthlyExpenditure: 17678.0))
        
        tableView.frame = view.safeAreaLayoutGuide.layoutFrame
        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubview(tableView)
        
        tableView.register(AccountViewCell.self, forCellReuseIdentifier: AccountViewCell.reuseId)
    }
    
}

extension AccountVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.tableView.cellForRow(at: indexPath)?.backgroundColor = .init(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 1.0)
        if self.selectedRowIndex != -1 {
            self.tableView.cellForRow(at: IndexPath(row: self.selectedRowIndex, section: 0))?.backgroundColor = .white
        }
        
        if selectedRowIndex != indexPath.row {
            self.thereIsCellTapped = true
            self.selectedRowIndex = indexPath.row
        }
        else {
            self.thereIsCellTapped = false
            self.selectedRowIndex = -1
            self.tableView.cellForRow(at: indexPath)?.backgroundColor = .white
        }
        
        self.tableView.beginUpdates()
        self.tableView.endUpdates()
        
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return .init(frame: .init(x: 0, y: 0, width: 0, height: 0))
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == selectedRowIndex && thereIsCellTapped {
            return 200
        }
        return 100
    }
    
}

extension AccountVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return accMembers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AccountViewCell.reuseId, for: indexPath) as! AccountViewCell
        
        let accMember = accMembers[indexPath.row]
        
        cell.nameLabel.text = accMember.name
        cell.balanceLabel.text = String(accMember.finance) + " USD"
        cell.imgView.image = UIImage(named: accMember.image)
        
        cell.monExpLabel.text = "Monthly expenses: " + String(accMember.monthlyExpenditure)
        cell.limitLabel.text = "Monthly limit: " + String(accMember.limit)
        cell.incomeLabel.text = "Monthly income: " + String(accMember.income)
        cell.selectionStyle = .none
        
        return cell
    }
    
    
}

struct accMember {
    var isActive: Bool
    var name: String
    var finance: Float
    var image: String
    var limit: Float
    var income: Float
    var monthlyExpenditure: Float
}
