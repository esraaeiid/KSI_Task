//
//  HomeViewController.swift
//  KSI_Task
//
//  Created by Esraa on 27/03/2022.
//

import UIKit
import RxSwift
import RxCocoa


class HomeViewController: UIViewController {

    let homeView = HomeView()
    let viewModel: HomeViewModel = .init()
    let disposeBag = DisposeBag()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.barTintColor = UIColor(named: "brown_home")
        self.view.backgroundColor = .white
        self.navigationController?.topViewController?.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: homeView.navigationTitleLabel)
        getHomeDetails()
        setupSearchBar()
        setupScrollView()
        setupCollectionViews()
        bindViewModel()
    }

    override func loadView() {
        self.view = homeView
    }

    func getHomeDetails(){
        viewModel.getHomeDetails()
    }

    func bindViewModel(){
        viewModel.viewModelUpdates.subscribe( onNext: { viewUpdates in
            switch viewUpdates {

            case .fetchedHomeDetails:
                DispatchQueue.main.async {
                    self.homeView.bannerstableView.reloadData()
                }
            }
        }, onError: { error in
            print(error)
        }, onCompleted: {
            print("Completed!")
        }).disposed(by: disposeBag)

    }



    func setupSearchBar(){
        homeView.searchBar.searchBarStyle = .default
        homeView.searchBar.placeholder = "هل تبحث عن منتج؟"
        homeView.searchBar.sizeToFit()
        homeView.searchBar.isTranslucent = false
        homeView.searchBar.backgroundImage = UIImage()
        homeView.searchBar.semanticContentAttribute = .forceRightToLeft
        homeView.searchBar.delegate = self
    }

    func setupScrollView(){
        homeView.scrollView.delegate = self
        homeView.scrollView.contentSize = CGSize(width: 1200,
                                                 height: homeView.scrollView.frame.size.height)
    }

    //MARK: - setup collectionViews

    func setupCollectionViews(){

        homeView.bannerstableView.dataSource = self
        homeView.bannerstableView.delegate = self
        homeView.bannerstableView.register(BannerCell.self, forCellReuseIdentifier: BannerCell.BannerCellID)
    }


}

extension HomeViewController: UISearchBarDelegate { }

extension HomeViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //TODO: - should handle showing navigation search icon when scroll here!
    }
}

