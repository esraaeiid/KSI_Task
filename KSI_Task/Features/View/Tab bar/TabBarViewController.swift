//
//  TabBarViewController.swift
//  KSI_Task
//
//  Created by Esraa on 28/03/2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        setupTabBar()
    }
    
    func setupTabBar(){
        let navOfHomeViewController = UINavigationController(rootViewController: HomeViewController())
        self.setViewControllers([navOfHomeViewController], animated: true)
    }


}
extension TabBarViewController: UITabBarControllerDelegate {

}
