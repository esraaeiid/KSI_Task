//
//  HomeViewController + CollectionView.swift
//  KSI_Task
//
//  Created by Esraa on 28/03/2022.
//


import UIKit

//MARK: - UICollectionViewDelegateFlowLayout & UICollectionViewDataSource

extension HomeViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {


    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: collectionView.frame.height - 20)
    }



    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.banners[section].content.blocks?.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        switch SectionType(rawValue: viewModel.banners[indexPath.section].content.type ?? SectionType.main.rawValue) {

       case .main:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCell.ProductCellID,
                                                                for: indexPath) as? ProductCell else {
                assertionFailure("Can't load ProductCell")
                return UICollectionViewCell()
            }

            let product = viewModel.banners[indexPath.section].content.blocks?[indexPath.row]
            if let product = product {
                cell.updateProductDetails(product: product)
                cell.setBeforeDiscountPrice(price: "24.0", currency: "ر.س")
            }

            return cell

        case .brandsSlider:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCell.ProductCellID,
                                                                for: indexPath) as? ProductCell else {
                assertionFailure("Can't load ProductCell")
                return UICollectionViewCell()
            }

            return cell

        case .categoryCover:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCell.ProductCellID,
                                                                for: indexPath) as? ProductCell else {
                assertionFailure("Can't load ProductCell")
                return UICollectionViewCell()
            }

            return cell

        case .categoryProductsSlider:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCell.ProductCellID,
                                                                for: indexPath) as? ProductCell else {
                assertionFailure("Can't load ProductCell")
                return UICollectionViewCell()
            }
            return cell

        case .productsCover:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCell.ProductCellID,
                                                                for: indexPath) as? ProductCell else {
                assertionFailure("Can't load ProductCell")
                return UICollectionViewCell()
            }
            return cell

        case .none:
            return UICollectionViewCell()

        }

    }
}

