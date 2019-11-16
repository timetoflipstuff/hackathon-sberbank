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
            createNewNavController(viewController: GeneralViewController(), title: "Main", imageName: "apps"),
            createNewNavController(viewController: AccountVC(), title: "Account", imageName: "search"),
            createNewNavController(viewController: StatisticViewController(), title: "Statistics", imageName: "today_icon"),
            createNewNavController(viewController: LimitsAndGoalsVC(), title: "Lims&Goals", imageName: "today_icon")
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
