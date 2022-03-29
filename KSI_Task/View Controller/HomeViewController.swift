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

        setupSearchBar()
        setupScrollView()
        setupCollectionViews()

    }

    override func loadView() {
        self.view = homeView
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
        homeView.scrollView.contentSize = CGSize(width: homeView.scrollView.frame.size.width,
                                                 height: 7000)
    }


    func setupCollectionViews(){
        ///Spectial Offers CollectionView
        homeView.mainSectionContainerView.spectialOffersCollectionView.dataSource = self
        homeView.mainSectionContainerView.spectialOffersCollectionView.delegate = self
        homeView.mainSectionContainerView.spectialOffersCollectionView.register(OffersCell.self,
                                                                                forCellWithReuseIdentifier: OffersCell.OffersCellID)

        ///Month Offers Collection View
        homeView.monthOffersContainerView.monthOffersCollectionView.dataSource = self
        homeView.monthOffersContainerView.monthOffersCollectionView.delegate = self
        homeView.monthOffersContainerView.monthOffersCollectionView.register(ProductCell.self,
                                                                             forCellWithReuseIdentifier: ProductCell.ProductCellID)

        ///Spectial And New Collection View
        homeView.spectialAndNewContainerView.spectialAndNewCollectionView.dataSource = self
        homeView.spectialAndNewContainerView.spectialAndNewCollectionView.delegate = self
        homeView.spectialAndNewContainerView.spectialAndNewCollectionView.register(ProductCell.self,
                                                                             forCellWithReuseIdentifier: ProductCell.ProductCellID)

        ///Season Collection View
        homeView.seasonContainerView.seasonCollectionView.dataSource = self
        homeView.seasonContainerView.seasonCollectionView.delegate = self
        homeView.seasonContainerView.seasonCollectionView.register(ProductCell.self,
                                                                             forCellWithReuseIdentifier: ProductCell.ProductCellID)


        ///BodyCare Collection View
        homeView.bodyCareContainerView.bodyCareCollectionView.dataSource = self
        homeView.bodyCareContainerView.bodyCareCollectionView.delegate = self
        homeView.bodyCareContainerView.bodyCareCollectionView.register(ProductCell.self,
                                                                             forCellWithReuseIdentifier: ProductCell.ProductCellID)

        ///Trending Collection View
        homeView.trendingContainerView.trendingCollectionView.dataSource = self
        homeView.trendingContainerView.trendingCollectionView.delegate = self
        homeView.trendingContainerView.trendingCollectionView.register(ProductCell.self,
                                                                             forCellWithReuseIdentifier: ProductCell.ProductCellID)

        ///Vitamins Collection View
        homeView.vitaminsContainerView.vitaminsCollectionView.dataSource = self
        homeView.vitaminsContainerView.vitaminsCollectionView.delegate = self
        homeView.vitaminsContainerView.vitaminsCollectionView.register(ProductCell.self,
                                                                             forCellWithReuseIdentifier: ProductCell.ProductCellID)

        ///ProteinsAndSupplements Collection View
        homeView.proteinsAndSupplementsContainerView.proteinsAndSupplementsCollectionView.dataSource = self
        homeView.proteinsAndSupplementsContainerView.proteinsAndSupplementsCollectionView.delegate = self
        homeView.proteinsAndSupplementsContainerView.proteinsAndSupplementsCollectionView.register(ProductCell.self,
                                                                             forCellWithReuseIdentifier: ProductCell.ProductCellID)

        ///Soaps Collection View
        homeView.soapContainerView.soapsCollectionView.dataSource = self
        homeView.soapContainerView.soapsCollectionView.delegate = self
        homeView.soapContainerView.soapsCollectionView.register(ProductCell.self,
                                                                             forCellWithReuseIdentifier: ProductCell.ProductCellID)

        ///Makeup Collection View
        homeView.makeupContainerView.makeupCollectionView.dataSource = self
        homeView.makeupContainerView.makeupCollectionView.delegate = self
        homeView.makeupContainerView.makeupCollectionView.register(ProductCell.self,
                                                                             forCellWithReuseIdentifier: ProductCell.ProductCellID)
    }


}

extension HomeViewController: UISearchBarDelegate { }

extension HomeViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //TODO: - should handle showing navigation search icon when scroll here!
    }
}
