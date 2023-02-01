//
//  NetflixTabBarController.swift
//  TestTextbook
//
//  Created by FDCBele on 1/31/23.
//

import UIKit

class NetflixTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        selectedIndex = 4
        
        let tab1 = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!
                tab1.tabBarItem.title = "Home"
                tab1.tabBarItem.image = UIImage(named: "tabbar_home")
        
        let tab2 = UIViewController()
        tab2.tabBarItem.title = "Textbook"
        tab2.tabBarItem.image = UIImage(named: "tabbar_search")
        
        let tab3 = UIViewController()
        tab2.tabBarItem.title = "Learning"
        tab2.tabBarItem.image = UIImage(named: "tabbar_search")
        
        let tab4 = UIViewController()
        tab2.tabBarItem.title = "Settings"
        tab2.tabBarItem.image = UIImage(named: "tabbar_search")

        viewControllers = [tab1, tab2, tab3, tab4]
    }
}
