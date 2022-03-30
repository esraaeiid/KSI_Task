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

//        let type = viewModel.banners[section].content.type ?? SectionType.categoryProductsSlider.rawValue
//
//        if  type == SectionType.main.rawValue {
//            return viewModel.banners[section].content.blocks?.count ?? 0
//
//        } else if type == SectionType.categoryProductsSlider.rawValue {
//            return viewModel.banners[section].content.products?.count ?? 0
//
//        } else if type == SectionType.productsCover.rawValue {
//            return viewModel.banners[section].content.products?.count ?? 0
//
//        } else if type == SectionType.brandsSlider.rawValue {
//            return viewModel.banners[section].content.brands?.count ?? 0
//
//        } else if type == SectionType.categoryCover.rawValue {
//            return viewModel.banners[section].content.blocks?.count ?? 0
//
//        } else {
//            return viewModel.banners[section].content.products?.count ?? 0
//        }
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
            }

            return cell

        case .brandsSlider:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCell.ProductCellID,
                                                                for: indexPath) as? ProductCell else {
                assertionFailure("Can't load ProductCell")
                return UICollectionViewCell()
            }

            let product = viewModel.banners[indexPath.section].content.products?[indexPath.row]
            return cell

        case .categoryCover:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCell.ProductCellID,
                                                                for: indexPath) as? ProductCell else {
                assertionFailure("Can't load ProductCell")
                return UICollectionViewCell()
            }

            let product = viewModel.banners[indexPath.section].content.products?[indexPath.row]
            return cell

        case .categoryProductsSlider:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCell.ProductCellID,
                                                                for: indexPath) as? ProductCell else {
                assertionFailure("Can't load ProductCell")
                return UICollectionViewCell()
            }

            let product = viewModel.banners[indexPath.section].content.products?[indexPath.row]



            return cell

        case .productsCover:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCell.ProductCellID,
                                                                for: indexPath) as? ProductCell else {
                assertionFailure("Can't load ProductCell")
                return UICollectionViewCell()
            }

            let product = viewModel.banners[indexPath.section].content.products?[indexPath.row]
            return cell

        case .none:
            return UICollectionViewCell()

        }

    }
}

