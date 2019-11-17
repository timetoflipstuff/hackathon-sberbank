//
//  ChatsTableViewController.swift
//  hackaton-sberbank
//
//  Created by Alexander on 17.11.2019.
//  Copyright © 2019 Sberbank-hackaton. All rights reserved.
//

import UIKit

class ChatsTableViewController: UITableViewController {
    
    var messages = [Message]()
    
    private let cellId = "cellId"

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        tableView.register(ChatTableViewCell.self, forCellReuseIdentifier: cellId)
        
        generateMessages()
    }

   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ChatTableViewCell
        cell.message = messages[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    private func generateMessages() {
        messages.append(Message(senderPictureName: "daughter", messageBody: "Привет, одолжи денег на кино"))
        messages.append(Message(senderPictureName: "father", messageBody: "Я приготовил обед"))
        messages.append(Message(senderPictureName: "mother", messageBody: "Чтоб к 8 был дома!!"))
        messages.append(Message(senderPictureName: "baby", messageBody: "А...агу"))
        
    }

}
