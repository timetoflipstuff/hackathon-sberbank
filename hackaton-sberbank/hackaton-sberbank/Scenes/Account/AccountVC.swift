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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Account"
        
        view.backgroundColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        
        //navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(handleAddNote))
        
        accMembers.append(accMember(name: "Joanne D'Arc", finance: 12000.49, image: "mother"))
        accMembers.append(accMember(name: "Alexander Parnev", finance: 3.22, image: "father"))
        accMembers.append(accMember(name: "Denis De'Luxe", finance: 100093.0, image: "daughter"))
        accMembers.append(accMember(name: "Leonid Derevenskiy", finance: 5.0, image: "son"))
        accMembers.append(accMember(name: "Alexandr Gorchilin", finance: 322.0, image: "sister"))
        
        tableView.frame = view.frame
        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubview(tableView)
        
        tableView.register(AccountViewCell.self, forCellReuseIdentifier: AccountViewCell.reuseId)
    }
    
}

extension AccountVC: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        
//        tableView.deselectRow(at: indexPath, animated: true)
//        
//        let controller = AccountViewCellController()
//        controller.innerText = accMembers[indexPath.row].name
//        navigationController?.pushViewController(controller, animated: true)
//    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return .init(frame: .init(x: 0, y: 0, width: 0, height: 0))
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
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
        cell.balanceLabel.text = String(accMember.finance) + " руб"
        cell.imgView.image = UIImage(named: accMember.image)
        
        return cell
    }
    
    
}

struct accMember {
    var name: String
    var finance: Float
    var image: String
//    var limit: Float?
//    var income: Float?
}
