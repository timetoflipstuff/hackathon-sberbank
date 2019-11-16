//
//  BaseTabBarController.swift
//  hackaton-sberbank
//
//  Created by Alexander on 16.11.2019.
//  Copyright © 2019 Sberbank-hackaton. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
            createNewNavController(viewController: GeneralViewController(), title: "Основное", imageName: "apps"),
            createNewNavController(viewController: AccountVC(), title: "Счет", imageName: "search"),
            createNewNavController(viewController: UIViewController(), title: "Today", imageName: "today_icon")
        ]
        
    }
    
    fileprivate func createNewNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        
        viewController.navigationItem.title = title
        
        navController.navigationBar.prefersLargeTitles = true
        navController.view.backgroundColor = .white
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        
        return navController
    }
    
}
