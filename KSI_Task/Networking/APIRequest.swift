//
//  APIRequest.swift
//  KSI_Task
//
//  Created by Esraa on 30/03/2022.
//

import Foundation


protocol APIRequest {
    var method: RequestType { get }
    var path: String { get }
    var parameters: [String : String] { get }
}


