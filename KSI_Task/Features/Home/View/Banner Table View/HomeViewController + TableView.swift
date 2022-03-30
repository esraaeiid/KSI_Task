//
//  HomeViewController + TableView.swift
//  KSI_Task
//
//  Created by Esraa on 30/03/2022.
//


import UIKit


//MARK: - UITableViewDelegate & UITableViewDataSource

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        300
    }



    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.banners.count
    }



    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: BannerCell.BannerCellID,
                                                       for: indexPath) as? BannerCell else {
            assertionFailure("Can't load BannerCell")
            return UITableViewCell()
        }
        let banner = viewModel.banners[indexPath.row]
        cell.setupCollectionView(delegateDataSource: self)
        cell.updateTitle(banner: banner)

        return cell
    }

    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        guard let cell = cell as? BannerCell else  {
            assertionFailure("Can't load BannerCell")
            return
        }
        let banner = viewModel.banners[indexPath.row]
        cell.updateCellData(indexPath: indexPath, content: banner.content)
    }



}
