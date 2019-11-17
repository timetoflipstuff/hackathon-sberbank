//
//  BaseTabBarController.swift
//  hackaton-sberbank
//
//  Created by Alexander on 16.11.2019.
//  Copyright © 2019 Sberbank-hackaton. All rights reserved.
//

import UIKit

class BaseTabBarController: CustomTabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
            createNewNavController(viewController: GeneralViewController(), title: "General", imageName: "general"),
            createNewNavController(viewController: AccountVC(), title: "Account", imageName: "account"),
            createNewNavController(viewController: ChatsTableViewController(), title: "Chats", imageName: "chats"),
            createNewNavController(viewController: StatisticsVC(), title: "Statistics", imageName: "statistics")
        ]
        
    }
    
    fileprivate func createNewNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        
        viewController.navigationItem.title = title
        
        navController.navigationBar.prefersLargeTitles = true
        navController.view.backgroundColor = .white
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal)
        
        return navController
    }
    
}
