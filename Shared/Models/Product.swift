//
//  Product.swift
//  MyAppClip
//
//  Created by Valery Shamshin on 26.01.2022.
//

import Foundation
import UIKit

enum ProductType: String {
    case coffee
    case desert
    case snacks
    case sandwiches
}

struct Product {
    let id: Int
    let title: String
    let description: String
    let price: Double
    let inStockCount: Int
    let type: ProductType
    let picture: UIImage?
}
