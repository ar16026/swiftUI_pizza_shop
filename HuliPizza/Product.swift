//
//  product.swift
//  HuliPizza
//
//  Created by Anthony Rubbo on 4/2/25.
//

import SwiftUI

struct Product: Identifiable, Hashable {
    var id: String {
        return name
    }
    var name: String
    var price: Int
}

struct CartItem: Identifiable, Equatable, Hashable {
    var id: String {
        return product.name
    }
    var product: Product
    var quantity: Int
    var total: Int {
        return quantity * product.price
    }
}
