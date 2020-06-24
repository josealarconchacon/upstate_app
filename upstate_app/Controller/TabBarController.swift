//
//  ViewController.swift
//  upstate_app
//
//  Created by Jose Alarcon Chacon on 6/23/20.
//  Copyright © 2020 Jose Alarcon Chacon. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let townVC = navController(viewController: TownViewController(), title: "Tows", image:#imageLiteral(resourceName: "menu"))
        let nrea_meVC = navController(viewController: NearMeViewController(), title: "Near Me", image:#imageLiteral(resourceName: "list"))
        let profileVC = navController(viewController: TownViewController(), title: "Profile",image:#imageLiteral(resourceName: "user"))
        UINavigationBar.appearance().prefersLargeTitles = true
        viewControllers = [townVC, nrea_meVC, profileVC]
        
    }

    fileprivate func navController(viewController: UIViewController, title: String, image: UIImage) -> UINavigationController{
        viewController.navigationItem.title = title
        let nav = UINavigationController(rootViewController: viewController)
        nav.title = title
        nav.tabBarItem.image = image
        return nav
    }
}

