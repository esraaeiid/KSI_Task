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
                    self.homeView.bannersCollectionView.reloadData()
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
        homeView.scrollView.contentSize = CGSize(width: homeView.scrollView.frame.size.width,
                                                 height: 7000)
    }

    //MARK: - setup collectionViews

    func setupSpectialOffersCollectionView(){
        homeView.mainSectionContainerView.spectialOffersCollectionView.dataSource = self
        homeView.mainSectionContainerView.spectialOffersCollectionView.delegate = self
        homeView.mainSectionContainerView.spectialOffersCollectionView.register(OffersCell.self,
                                                                                forCellWithReuseIdentifier: OffersCell.OffersCellID)
    }

    func setupMonthOffersCollectionView(){
        homeView.monthOffersContainerView.monthOffersCollectionView.dataSource = self
        homeView.monthOffersContainerView.monthOffersCollectionView.delegate = self
        homeView.monthOffersContainerView.monthOffersCollectionView.register(ProductCell.self,
                                                                             forCellWithReuseIdentifier: ProductCell.ProductCellID)
    }

    func setupSpectialAndNewCollectionView(){
        homeView.spectialAndNewContainerView.spectialAndNewCollectionView.dataSource = self
        homeView.spectialAndNewContainerView.spectialAndNewCollectionView.delegate = self
        homeView.spectialAndNewContainerView.spectialAndNewCollectionView.register(ProductCell.self,
                                                                            forCellWithReuseIdentifier: ProductCell.ProductCellID)
    }

    func setupSeasonCollectionView(){
        homeView.seasonContainerView.seasonCollectionView.dataSource = self
        homeView.seasonContainerView.seasonCollectionView.delegate = self
        homeView.seasonContainerView.seasonCollectionView.register(ProductCell.self,
                                                                             forCellWithReuseIdentifier: ProductCell.ProductCellID)
    }

    func setupBodyCareCollectionView(){
        homeView.bodyCareContainerView.bodyCareCollectionView.dataSource = self
        homeView.bodyCareContainerView.bodyCareCollectionView.delegate = self
        homeView.bodyCareContainerView.bodyCareCollectionView.register(ProductCell.self,
                                                                             forCellWithReuseIdentifier: ProductCell.ProductCellID)
    }

    func setupTrendingCollectionView(){
        homeView.trendingContainerView.trendingCollectionView.dataSource = self
        homeView.trendingContainerView.trendingCollectionView.delegate = self
        homeView.trendingContainerView.trendingCollectionView.register(ProductCell.self,
                                                                             forCellWithReuseIdentifier: ProductCell.ProductCellID)
    }

    func setupVitaminsCollectionView(){
        homeView.vitaminsContainerView.vitaminsCollectionView.dataSource = self
        homeView.vitaminsContainerView.vitaminsCollectionView.delegate = self
        homeView.vitaminsContainerView.vitaminsCollectionView.register(ProductCell.self,
                                                                             forCellWithReuseIdentifier: ProductCell.ProductCellID)
    }

    func setupProteinsAndSupplementsCollectionView(){
        homeView.proteinsAndSupplementsContainerView.proteinsAndSupplementsCollectionView.dataSource = self
        homeView.proteinsAndSupplementsContainerView.proteinsAndSupplementsCollectionView.delegate = self
        homeView.proteinsAndSupplementsContainerView.proteinsAndSupplementsCollectionView.register(ProductCell.self,
                                                                             forCellWithReuseIdentifier: ProductCell.ProductCellID)
    }

    func setupSoapsCollectionView(){
        homeView.soapContainerView.soapsCollectionView.dataSource = self
        homeView.soapContainerView.soapsCollectionView.delegate = self
        homeView.soapContainerView.soapsCollectionView.register(ProductCell.self,
                                                                             forCellWithReuseIdentifier: ProductCell.ProductCellID)
    }

    func setupMakeupCollectionView(){
        homeView.makeupContainerView.makeupCollectionView.dataSource = self
        homeView.makeupContainerView.makeupCollectionView.delegate = self
        homeView.makeupContainerView.makeupCollectionView.register(ProductCell.self,
                                                                             forCellWithReuseIdentifier: ProductCell.ProductCellID)
    }

    func setupCollectionViews(){

        homeView.bannersCollectionView.dataSource = self
        homeView.bannersCollectionView.delegate = self
        homeView.bannersCollectionView.register(BannerCell.self,
                                                forCellWithReuseIdentifier: BannerCell.BannerCellID)

//        ///Spectial Offers CollectionView
//        setupSpectialOffersCollectionView()
//
//        ///Month Offers Collection View
//        setupMonthOffersCollectionView()
//
//        ///Spectial And New Collection View
//        setupSpectialAndNewCollectionView()
//
//        ///Season Collection View
//        setupSeasonCollectionView()
//
//
//        ///BodyCare Collection View
//        setupBodyCareCollectionView()
//
//        ///Trending Collection View
//        setupTrendingCollectionView()
//
//        ///Vitamins Collection View
//        setupVitaminsCollectionView()
//
//        ///ProteinsAndSupplements Collection View
//        setupProteinsAndSupplementsCollectionView()
//
//        ///Soaps Collection View
//        setupSoapsCollectionView()
//
//        ///Makeup Collection View
//        setupMakeupCollectionView()
    }


}

extension HomeViewController: UISearchBarDelegate { }

extension HomeViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //TODO: - should handle showing navigation search icon when scroll here!
    }
}
