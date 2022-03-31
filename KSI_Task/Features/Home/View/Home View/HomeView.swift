//
//  HomeView.swift
//  KSI_Task
//
//  Created by Esraa on 27/03/2022.
//

import UIKit

class HomeView: UIView {

    // MARK: - Initializer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }



//MARK: - Navigation Controller

    let navigationTitleLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 9, width: 60, height: 30)
        label.text = "مراسي"
        label.textColor = .white
        label.textAlignment = .center
        label.layer.borderWidth = 2.0
        label.layer.borderColor = UIColor.white.cgColor
        label.font = UIFont.cairoBlack(with: 13)
        return label
    }()

    //MARK: - Container View

    lazy var searchBar: UISearchBar = UISearchBar()

    var scrollView: UIScrollView = {
        var scrollview = UIScrollView()
        scrollview.backgroundColor = .white
        scrollview.isScrollEnabled = true
        return scrollview
    }()

    /* used stack views to manage dynamic showing for collection views.
     as stackView adjust its properities when view inside of it set to hidden */

    var collectionViewsStackView: UIStackView = {
       var stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 0
        stackView.distribution = .fill
        return stackView
    }()


    let bannerstableView: UITableView = {
        let tableView = UITableView()
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = true
        tableView.bounces = true
        tableView.backgroundColor = .clear
        return tableView
    }()



    //MARK: - Gluten Free Section

    lazy var glutenFreeCollectionView: UICollectionView =  {
         let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 12
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 16)

        let collectionView = UICollectionView(frame: self.bounds, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.collectionViewLayout = flowLayout
        collectionView.isUserInteractionEnabled = true
        collectionView.backgroundColor = .blue
        collectionView.isScrollEnabled = true
        return collectionView
     }()





    //MARK: - Hair care Section

    var hairCareImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.backgroundColor = .brown
        return imageView
    }()


    lazy var hairCareCollectionView: UICollectionView =  {
         let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 12
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 16)

        let collectionView = UICollectionView(frame: self.bounds, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.collectionViewLayout = flowLayout
        collectionView.isUserInteractionEnabled = true
        collectionView.backgroundColor = .green
        collectionView.isScrollEnabled = true
        return collectionView
     }()


    //MARK: - Dried Fruit Section

    lazy var driedFruitCollectionView: UICollectionView =  {
         let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 12
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 16)

        let collectionView = UICollectionView(frame: self.bounds, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.collectionViewLayout = flowLayout
        collectionView.isUserInteractionEnabled = true
        collectionView.backgroundColor = .blue
        collectionView.isScrollEnabled = true
        return collectionView
     }()



    //MARK: - Turkish Coffee Section

    var turkishCoffeeImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.backgroundColor = .brown
        return imageView
    }()


    lazy var turkishCoffeeCollectionView: UICollectionView =  {
         let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 12
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 16)

        let collectionView = UICollectionView(frame: self.bounds, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.collectionViewLayout = flowLayout
        collectionView.isUserInteractionEnabled = true
        collectionView.backgroundColor = .green
        collectionView.isScrollEnabled = true
        return collectionView
     }()


    //MARK: - Scented Candles Section

    lazy var scentedCandlesCollectionView: UICollectionView =  {
         let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 12
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 16)

        let collectionView = UICollectionView(frame: self.bounds, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.collectionViewLayout = flowLayout
        collectionView.isUserInteractionEnabled = true
        collectionView.backgroundColor = .blue
        collectionView.isScrollEnabled = true
        return collectionView
     }()


    //MARK: - Turkish Spices Section

    var turkishSpicesImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.backgroundColor = .brown
        return imageView
    }()


    lazy var turkishSpicesCollectionView: UICollectionView =  {
         let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 12
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 16)

        let collectionView = UICollectionView(frame: self.bounds, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.collectionViewLayout = flowLayout
        collectionView.isUserInteractionEnabled = true
        collectionView.backgroundColor = .green
        collectionView.isScrollEnabled = true
        return collectionView
     }()


    //MARK: - Turkish Baklava Section

    lazy var turkishBaklavaCollectionView: UICollectionView =  {
         let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 12
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 16)

        let collectionView = UICollectionView(frame: self.bounds, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.collectionViewLayout = flowLayout
        collectionView.isUserInteractionEnabled = true
        collectionView.backgroundColor = .blue
        collectionView.isScrollEnabled = true
        return collectionView
     }()



    //MARK: - Turkish Nuts Section


    var turkishNutsImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.backgroundColor = .brown
        return imageView
    }()


    lazy var turkishNutsCollectionView: UICollectionView =  {
         let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 12
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 16)

        let collectionView = UICollectionView(frame: self.bounds, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.collectionViewLayout = flowLayout
        collectionView.isUserInteractionEnabled = true
        collectionView.backgroundColor = .green
        collectionView.isScrollEnabled = true
        return collectionView
     }()



    //MARK: - Coffee And Tea Machines Section

    lazy var coffeeTeaMachinesCollectionView: UICollectionView =  {
         let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 12
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 16)

        let collectionView = UICollectionView(frame: self.bounds, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.collectionViewLayout = flowLayout
        collectionView.isUserInteractionEnabled = true
        collectionView.backgroundColor = .blue
        collectionView.isScrollEnabled = true
        return collectionView
     }()

    //MARK: - Turkish Divider Section

    var turkishDividerImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.backgroundColor = .brown
        return imageView
    }()

    lazy var turkishDividerCollectionView: UICollectionView =  {
         let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 12
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 16)

        let collectionView = UICollectionView(frame: self.bounds, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.collectionViewLayout = flowLayout
        collectionView.isUserInteractionEnabled = true
        collectionView.backgroundColor = .yellow
        collectionView.isScrollEnabled = true
        return collectionView
     }()



    //MARK: - Masks Section

    lazy var masksCollectionView: UICollectionView =  {
         let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 12
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 16)

        let collectionView = UICollectionView(frame: self.bounds, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.collectionViewLayout = flowLayout
        collectionView.isUserInteractionEnabled = true
        collectionView.backgroundColor = .blue
        collectionView.isScrollEnabled = true
        return collectionView
     }()



    //MARK: - Herbal Tea Section

    lazy var herbalTeaCollectionView: UICollectionView =  {
         let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 12
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 16)

        let collectionView = UICollectionView(frame: self.bounds, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.collectionViewLayout = flowLayout
        collectionView.isUserInteractionEnabled = true
        collectionView.backgroundColor = .red
        collectionView.isScrollEnabled = true
        return collectionView
     }()



    //MARK: - Buying Offers Section

    lazy var buyingOffersCollectionView: UICollectionView =  {
         let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 12
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 16)

        let collectionView = UICollectionView(frame: self.bounds, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.collectionViewLayout = flowLayout
        collectionView.isUserInteractionEnabled = true
        collectionView.backgroundColor = .blue
        collectionView.isScrollEnabled = true
        return collectionView
     }()


    //MARK: - Kitchen Tools Section

    var kitchenToolsImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.backgroundColor = .brown
        return imageView
    }()

    lazy var kitchenToolsCollectionView: UICollectionView =  {
         let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 12
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 16)

        let collectionView = UICollectionView(frame: self.bounds, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.collectionViewLayout = flowLayout
        collectionView.isUserInteractionEnabled = true
        collectionView.backgroundColor = .yellow
        collectionView.isScrollEnabled = true
        return collectionView
     }()



    //MARK: - Diet Products Section

    lazy var dietProductsCollectionView: UICollectionView =  {
         let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 12
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 16)

        let collectionView = UICollectionView(frame: self.bounds, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.collectionViewLayout = flowLayout
        collectionView.isUserInteractionEnabled = true
        collectionView.backgroundColor = .blue
        collectionView.isScrollEnabled = true
        return collectionView
     }()



    //MARK: - Brands Section

    lazy var brandingCollectionView: UICollectionView =  {
         let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 12
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 16)

        let collectionView = UICollectionView(frame: self.bounds, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.collectionViewLayout = flowLayout
        collectionView.isUserInteractionEnabled = true
        collectionView.backgroundColor = .green
        collectionView.isScrollEnabled = true
        return collectionView
     }()



    //MARK: - Setup Views

    func setupViews(){
        setupScrollView()
    }


    func setupScrollView(){
        self.addSubview(scrollView)
        scrollView.anchor(top: self.safeAreaLayoutGuide.topAnchor,
                         leading: leadingAnchor,
                          bottom: bottomAnchor,
                         trailing: trailingAnchor,
                         padding: .init(top: 0, left: 0, bottom: 0, right: 0))

        scrollView.addSubview(searchBar)
        searchBar.constrainHeight(constant: 60)
        searchBar.anchor(top: scrollView.topAnchor,
                         leading: leadingAnchor,
                         bottom: nil,
                         trailing: trailingAnchor,
                         padding: .init(top: 0, left: 0, bottom: 0, right: 0))

        scrollView.addSubview(bannerstableView)
        bannerstableView.anchor(top: searchBar.bottomAnchor,
                                        leading: leadingAnchor,
                                        bottom:  bottomAnchor,
                                        trailing: trailingAnchor,
                                        padding: .init(top: 0, left: 0, bottom: 0, right: 0))

    }



}
