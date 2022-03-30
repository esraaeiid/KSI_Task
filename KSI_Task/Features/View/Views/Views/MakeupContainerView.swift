//
//  MakeupContainerView.swift
//  KSI_Task
//
//  Created by Esraa on 29/03/2022.
//

import UIKit

class MakeupContainerView: UIView {

    // MARK: - Initializer

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    var makeupImageView: UIImageView = {
        var view = UIImageView()
        view.backgroundColor = .white
        return view
    }()


    var makeupCollectionView: UICollectionView =  {
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
        self.addSubview(makeupImageView)
        makeupImageView.constrainHeight(constant: 200)
        makeupImageView.anchor(top: self.topAnchor,
                                           leading: self.leadingAnchor,
                                           bottom: nil,
                                           trailing: self.trailingAnchor,
                                           padding: .init(top: 0, left: 0, bottom: 0, right: 0))

        self.addSubview(makeupCollectionView)
        makeupCollectionView.constrainHeight(constant: 250)
        makeupCollectionView.anchor(top: makeupImageView.topAnchor,
                                           leading: self.leadingAnchor,
                                           bottom: nil,
                                           trailing: self.trailingAnchor,
                                           padding: .init(top: 170, left: 0, bottom: 0, right: 0))
    }
}
