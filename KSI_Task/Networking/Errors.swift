//
//  Errors.swift
//  KSI_Task
//
//  Created by Esraa on 30/03/2022.
//

import Foundation

struct ErrorModel: Codable {
    let status: String?
    let code: String?
    let message: String?
}
