//
//  Model.swift
//  KSI_Task
//
//  Created by Esraa on 27/03/2022.
//

import Foundation

// MARK: - Home

struct Home: Codable {
    let status: Status
    let data: HomeDetails
}

// MARK: - DataClass

struct HomeDetails: Codable {
    let popupAd: PopupAd
    let meta: Meta
    let banners: [Banner]
}

// MARK: - Banner

struct Banner: Codable {
    let type: SectionType
    let content: Content
}

// MARK: - Content
struct Content: Codable {

    let backgroundImage: String?
    let backgroundFocusPoint: String?
    let backgroundColor: Color?
    let heading: String?
    let blocks: [Block]?
    let type: String?
    let id: Int?
    let products: [Product]?
    let textColor: Color?
    let brands: [Brand]?
}

enum Color: String, Codable {
    case empty = ""
    case ffffff = "#ffffff"
}

// MARK: - Block
struct Block: Codable {
    let type: String?
    let id: Int
    let title: String?
    let blockImage: String?
    let blockBackgroundColor, textColor: String?
    let image: String?
}

// MARK: - Brand
struct Brand: Codable {
    let id: Int
    let image: String
    let category: Int
}

// MARK: - Product
struct Product: Codable {
    let id: Int
    let title: String
    let image: String
    let brand: String
    let rating: Double
    let variants: [Variant]
}

// MARK: - Variant
struct Variant: Codable {
    let id: Int
    let isDefault, hasStock: Bool
    let stock: Int
    let unlimitedStock: Bool
    let minQty, maxQty, weight: Int
    let dateAdded: String
    let onSale: Bool
    let currency: String
    let price, salePrice, saleAmount: Double
    let saleType: SaleType?
    let bestSeller: Bool
    let badge: String
    let badgeTextColor: Color
    let badgeBackground: BadgeBackground
}



enum BadgeBackground: String, Codable {
    case empty = ""
    case the050505 = "#050505"
}



enum SaleType: String, Codable {
    case empty = ""
    case percent = "percent"
}

enum SectionType: String, Codable {
    case brandsSlider = "brandsSlider"
    case categoryCover = "categoryCover"
    case categoryProductsSlider = "categoryProductsSlider"
    case main = "main"
    case productsCover = "productsCover"
}

// MARK: - Meta

struct Meta: Codable {
    let pageNumber, pageLimit, totalPages: Int
}

// MARK: - PopupAd
struct PopupAd: Codable {}

// MARK: - Status
struct Status: Codable {
    let success: Bool
    let code: Int
    let message, devMsg: String
    let update: Update
}

// MARK: - Update
struct Update: Codable {
    let forceUpdate: Bool
    let forceUpdateMessage: String
}


