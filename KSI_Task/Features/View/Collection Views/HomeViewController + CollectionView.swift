//
//  HomeViewController + CollectionView.swift
//  KSI_Task
//
//  Created by Esraa on 28/03/2022.
//

import Foundation
import UIKit

extension HomeViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {



    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width - 32, height: 60)
//        if collectionView == homeView.mainSectionContainerView.spectialOffersCollectionView {
//            return CGSize(width: 80, height: collectionView.frame.height - 10)
//
//        } else if collectionView == homeView.monthOffersContainerView.monthOffersCollectionView  {
//            return CGSize(width: 200, height: collectionView.frame.height - 10)
//
//        } else if collectionView == homeView.spectialAndNewContainerView.spectialAndNewCollectionView  {
//            return CGSize(width: 200, height: collectionView.frame.height - 10)
//
//        } else if collectionView == homeView.seasonContainerView.seasonCollectionView  {
//            return CGSize(width: 200, height: collectionView.frame.height - 10)
//
//        } else if collectionView == homeView.bodyCareContainerView.bodyCareCollectionView {
//            return CGSize(width: 200, height: collectionView.frame.height - 10)
//        }
//        else if collectionView == homeView.trendingContainerView.trendingCollectionView {
//            return CGSize(width: 200, height: collectionView.frame.height - 10)
//        }
//        else if collectionView == homeView.vitaminsContainerView.vitaminsCollectionView {
//           return CGSize(width: 200, height: collectionView.frame.height - 10)
//       }
//        else if collectionView == homeView.proteinsAndSupplementsContainerView.proteinsAndSupplementsCollectionView {
//           return CGSize(width: 200, height: collectionView.frame.height - 10)
//       }
//        else if collectionView == homeView.soapContainerView.soapsCollectionView {
//           return CGSize(width: 200, height: collectionView.frame.height - 10)
//       }
//        else if collectionView == homeView.makeupContainerView.makeupCollectionView {
//           return CGSize(width: 200, height: collectionView.frame.height - 10)
//       }
//
//        else {
//            return CGSize(width: 0, height: 0)
//        }
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.banners.count
//        if collectionView == homeView.mainSectionContainerView.spectialOffersCollectionView {
//            return 10
//        } else if collectionView == homeView.monthOffersContainerView.monthOffersCollectionView {
//            return 10
//        } else if collectionView == homeView.spectialAndNewContainerView.spectialAndNewCollectionView {
//            return 10
//        } else if collectionView == homeView.seasonContainerView.seasonCollectionView {
//            return 10
//        } else if collectionView == homeView.bodyCareContainerView.bodyCareCollectionView {
//            return 10
//        } else if collectionView == homeView.trendingContainerView.trendingCollectionView {
//            return 10
//        } else if collectionView == homeView.vitaminsContainerView.vitaminsCollectionView {
//            return 10
//        } else if collectionView == homeView.proteinsAndSupplementsContainerView.proteinsAndSupplementsCollectionView {
//            return 10
//        } else if collectionView == homeView.soapContainerView.soapsCollectionView {
//            return 10
//        } else if collectionView == homeView.makeupContainerView.makeupCollectionView {
//            return 10
//        } else {
//            return 0
//        }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BannerCell.BannerCellID,
                                                            for: indexPath) as? BannerCell else {
            assertionFailure("Can't load BannerCell")
            return UICollectionViewCell()
        }
        cell.productLabel.text = viewModel.banners[indexPath.row].type.rawValue

        return cell
//        if collectionView == homeView.mainSectionContainerView.spectialOffersCollectionView {
//        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OffersCell.OffersCellID, for: indexPath) as? OffersCell else {
//            assertionFailure("Can't load OffersCell")
//            return UICollectionViewCell()
//        }
//        return cell
//
//        } else if collectionView == homeView.monthOffersContainerView.monthOffersCollectionView {
//        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCell.ProductCellID, for: indexPath) as? ProductCell else {
//            assertionFailure("Can't load ProductCell")
//            return UICollectionViewCell()
//        }
//            cell.setBeforeDiscountPrice(price: "33.0", currency: "ر.س")
//
//        return cell
//
//        } else if collectionView == homeView.spectialAndNewContainerView.spectialAndNewCollectionView {
//            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCell.ProductCellID, for: indexPath) as? ProductCell else {
//                assertionFailure("Can't load ProductCell")
//                return UICollectionViewCell()
//            }
//            return cell
//
//        } else if collectionView == homeView.seasonContainerView.seasonCollectionView {
//            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCell.ProductCellID, for: indexPath) as? ProductCell else {
//                assertionFailure("Can't load ProductCell")
//                return UICollectionViewCell()
//            }
//            return cell
//
//        } else if collectionView == homeView.bodyCareContainerView.bodyCareCollectionView {
//            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCell.ProductCellID, for: indexPath) as? ProductCell else {
//                assertionFailure("Can't load ProductCell")
//                return UICollectionViewCell()
//            }
//            return cell
//
//
//        } else if collectionView == homeView.trendingContainerView.trendingCollectionView {
//            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCell.ProductCellID, for: indexPath) as? ProductCell else {
//                assertionFailure("Can't load ProductCell")
//                return UICollectionViewCell()
//            }
//            return cell
//
//        } else if collectionView == homeView.vitaminsContainerView.vitaminsCollectionView {
//            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCell.ProductCellID, for: indexPath) as? ProductCell else {
//                assertionFailure("Can't load ProductCell")
//                return UICollectionViewCell()
//            }
//            return cell
//
//        } else if collectionView == homeView.proteinsAndSupplementsContainerView.proteinsAndSupplementsCollectionView {
//            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCell.ProductCellID, for: indexPath) as? ProductCell else {
//                assertionFailure("Can't load ProductCell")
//                return UICollectionViewCell()
//            }
//            return cell
//
//        } else if collectionView == homeView.soapContainerView.soapsCollectionView {
//            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCell.ProductCellID, for: indexPath) as? ProductCell else {
//                assertionFailure("Can't load ProductCell")
//                return UICollectionViewCell()
//            }
//            return cell
//
//        } else if collectionView == homeView.makeupContainerView.makeupCollectionView {
//            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCell.ProductCellID, for: indexPath) as? ProductCell else {
//                assertionFailure("Can't load ProductCell")
//                return UICollectionViewCell()
//            }
//            return cell
//
//        } else {
//            return UICollectionViewCell()
//        }
    }



}
