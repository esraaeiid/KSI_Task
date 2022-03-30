//
//  SoapContainerView.swift
//  KSI_Task
//
//  Created by Esraa on 29/03/2022.
//

import UIKit

class SoapContainerView: UIView {

    // MARK: - Initializer

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    let titLeLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.font =  UIFont.cairoExtraBold(with: 13)
        label.text = "صابون طبيعي"
        label.textColor = .black
        label.textAlignment = .right

        return label
    }()

     var soapsCollectionView: UICollectionView =  {
         let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 12
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)

         let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.collectionViewLayout = flowLayout
        collectionView.isUserInteractionEnabled = true
        collectionView.backgroundColor = .white
        collectionView.isScrollEnabled = true
         collectionView.showsHorizontalScrollIndicator = false
        return collectionView
     }()



    func setupViews(){
        self.addSubview(soapsCollectionView)
        self.addSubview(titLeLabel)
        titLeLabel.constrainHeight(constant: 50)

        titLeLabel.anchor(top: self.topAnchor,
                                           leading: self.leadingAnchor,
                                           bottom: nil,
                                           trailing: self.trailingAnchor,
                                           padding: .init(top: 0, left: 0, bottom: 0, right: 16   ))
        soapsCollectionView.constrainHeight(constant: 250)

        soapsCollectionView.anchor(top: titLeLabel.bottomAnchor,
                                           leading: self.leadingAnchor,
                                           bottom: nil,
                                           trailing: self.trailingAnchor,
                                           padding: .init(top: 0, left: 0, bottom: 0, right: 0))
    }

}
