//
//  BannerCell.swift
//  KSI_Task
//
//  Created by Esraa on 30/03/2022.
//

import UIKit

class BannerCell: UITableViewCell {


    // MARK: - Cell Identifier

    static let BannerCellID = "BannerCellID"


        // MARK: - Initializer


    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupViews()
    }


        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)

        }



        // MARK: - Properties

    let titleLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.font =  UIFont.cairoExtraBold(with: 13)
        label.text = "عروض نوفمبر"
        label.textColor = .black
        label.textAlignment = .right

        return label
    }()



     var productCollectionView: UICollectionView =  {
         let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 5
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)

         let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.collectionViewLayout = flowLayout
        collectionView.isUserInteractionEnabled = true
        collectionView.backgroundColor = .white
        collectionView.isScrollEnabled = true
         collectionView.showsHorizontalScrollIndicator = false
        return collectionView
     }()





        // MARK: - setup views properties

        func setupViews() {
            contentView.addSubview(titleLabel)
            contentView.addSubview(productCollectionView)

            titleLabel.constrainHeight(constant: 20)

            titleLabel.anchor(top: contentView.topAnchor,
                                               leading: contentView.leadingAnchor,
                                               bottom: nil,
                                               trailing: contentView.trailingAnchor,
                                               padding: .init(top: 0, left: 0, bottom: 0, right: 16   ))
            
            productCollectionView.anchor(top: titleLabel.bottomAnchor,
                                               leading: contentView.leadingAnchor,
                                         bottom: contentView.bottomAnchor,
                                               trailing: contentView.trailingAnchor,
                                               padding: .init(top: 2, left: 0, bottom: 0, right: 0))
        }


    //MARK: - setup CollectionView
    
    func setupCollectionView(delegateDataSource: UICollectionViewDelegate & UICollectionViewDataSource){
        productCollectionView.delegate = delegateDataSource
        productCollectionView.dataSource = delegateDataSource
        productCollectionView.register(ProductCell.self, forCellWithReuseIdentifier: ProductCell.ProductCellID)
    }


    func updateTitle(banner: Banner){
        if let heading = banner.content.heading {
            titleLabel.text = heading
        }
    }

    func updateCellData(indexPath: IndexPath, content: Content){

        productCollectionView.reloadData()
    }


    }

