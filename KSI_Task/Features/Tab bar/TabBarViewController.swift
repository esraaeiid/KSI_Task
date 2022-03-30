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
        let navOfProfileViewController = UINavigationController(rootViewController: ProfileViewController())
        let navOfCartViewController = UINavigationController(rootViewController: CartViewController())

        self.setViewControllers([navOfCartViewController,
                                 navOfProfileViewController,
                                 navOfHomeViewController], animated: true)

        guard let items = self.tabBar.items else {
            return
        }

        let imagesOfTabBer = ["cart","person","house"]
        let imagesOnSelection = ["cart.fill","person","house.fill"]

        for i in 0..<items.count {
            items[i].image = UIImage(systemName: imagesOfTabBer[i])
            items[i].selectedImage = UIImage(systemName: imagesOnSelection[i])

        }
        self.selectedIndex = 2
    }


}
extension TabBarViewController: UITabBarControllerDelegate {

}
