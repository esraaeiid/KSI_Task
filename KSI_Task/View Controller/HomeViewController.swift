//
//  HomeViewController.swift
//  KSI_Task
//
//  Created by Esraa on 27/03/2022.
//

import UIKit

class HomeViewController: UIViewController {

    let homeView = HomeView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.barTintColor = UIColor(named: "brown_home")
        self.view.backgroundColor = .white
        self.navigationController?.topViewController?.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: homeView.navigationTitleLabel)
    }

    override func loadView() {
        self.view = homeView
    }


}

