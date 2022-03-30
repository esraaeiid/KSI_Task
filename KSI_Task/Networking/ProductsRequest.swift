//
//  ProductsRequest.swift
//  KSI_Task
//
//  Created by Esraa on 30/03/2022.
//

import UIKit
import RxCocoa
import RxSwift

class ProductsRequest: APIRequest {
    
    var method: RequestType = .GET
    var path: String = "task/response.json"
    var parameters = [String : String]()

    private let baseURL = URL(string: "http://178.128.171.40/")!

    func send<T: Codable>() -> Observable<T> {
        return Observable<T>.create { observer in
            let request = self.request(with: self.baseURL)
            let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                do {
                    let model: Home = try JSONDecoder().decode(Home.self, from: data ?? Data())
                    observer.onNext( model.data.banners as! T)
                } catch let error {
                    observer.onError(error)
                }
                observer.onCompleted()
            }
            task.resume()

            return Disposables.create {
                task.cancel()
            }
        }
    }

}


