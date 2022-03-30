//
//  HomeViewModel.swift
//  KSI_Task
//
//  Created by Esraa on 30/03/2022.
//

import UIKit
import RxCocoa
import RxSwift

extension HomeViewController {

    class HomeViewModel {

        //MARK: - Properities
        
        let service = ProductsRequest.init()
        var banners: [Banner] = []
        let disposeBag = DisposeBag()
        var viewModelUpdates: PublishSubject<ViewModelUpdates> = .init()

        
        //MARK: - get HomeDetails

        func getHomeDetails(){
            let result : Observable<[Banner]> = self.service.send()
            result.subscribe(
                onNext: { result in
                    self.banners = result
                    self.viewModelUpdates.onNext(.fetchedHomeDetails)
                },
                onError: { error in
                    print(error.localizedDescription)
                },
                onCompleted: {
                    print("Completed event.")
                }).disposed(by: disposeBag)
        }


    }

}

//MARK: - ViewModel Updates
extension HomeViewController.HomeViewModel {
    enum ViewModelUpdates {
        case fetchedHomeDetails
    }
}



