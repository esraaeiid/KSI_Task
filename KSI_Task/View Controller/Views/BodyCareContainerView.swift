//
//  BodyCareContainerView.swift
//  KSI_Task
//
//  Created by Esraa on 29/03/2022.
//

import UIKit

class BodyCareContainerView: UIView {

    // MARK: - Initializer

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    var mainSectionImageView: UIImageView = {
        var view = UIImageView()
        view.backgroundColor = .white
        return view
    }()


    var bodyCareCollectionView: UICollectionView =  {
         let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 12
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)

        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.collectionViewLayout = flowLayout
        collectionView.isUserInteractionEnabled = true
        collectionView.backgroundColor = .clear
        collectionView.isScrollEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
     }()


    func setupViews(){
        self.addSubview(mainSectionImageView)
        mainSectionImageView.constrainHeight(constant: 200)
        mainSectionImageView.anchor(top: self.topAnchor,
                                           leading: self.leadingAnchor,
                                           bottom: nil,
                                           trailing: self.trailingAnchor,
                                           padding: .init(top: 0, left: 0, bottom: 0, right: 0))

        self.addSubview(bodyCareCollectionView)
        bodyCareCollectionView.constrainHeight(constant: 250)
        bodyCareCollectionView.anchor(top: mainSectionImageView.topAnchor,
                                           leading: self.leadingAnchor,
                                           bottom: nil,
                                           trailing: self.trailingAnchor,
                                           padding: .init(top: 170, left: 0, bottom: 0, right: 0))
    }
}
