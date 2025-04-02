//
//  CreateOrderViewModel.swift
//  HuliPizza
//
//  Created by Anthony Rubbo on 4/2/25.
//

import SwiftUI

class CreateOrderViewModel: ObservableObject {
    @Published var total: Int = 0
    @Published var products: [Product] = []
    @Published var quantity: Int = 0
    @Published var selectedProducts: [CartItem] = []
    
    init(){
        products = [
            Product(name: "Pepperoni", price: 10),
            Product(name: "Sausage", price: 20),
            Product(name: "Margherita", price: 12),
            Product(name: "Hawaiian", price: 14),
            Product(name: "Veggie", price: 12)
        ]
    }
    
    func addProduct(_ product: Product) {
        total += product.price
        quantity += 1
        if let index = selectedProducts.firstIndex(where: { $0.product == product }) {
            selectedProducts[index].quantity += 1
        } else {
            selectedProducts.append(CartItem(product: product, quantity: 1))
        }
    }
    
    func deleteProduct(_ offset: IndexSet) {
        for index in offset {
            let product = selectedProducts[index]
            total -= product.product.price
            quantity -= 1
            if product.quantity > 1 {
                selectedProducts[index].quantity -= 1
            } else {
                selectedProducts.remove(at: index)
            }
        }
    }
}
