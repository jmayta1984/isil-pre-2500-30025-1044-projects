//
//  Product.swift
//  Inventory
//
//  Created by user272495 on 1/29/25.
//

import Foundation

typealias Products = [Product]

struct Product: Identifiable {
    let id: UUID
    let name: String
    let quantity: Int
}
