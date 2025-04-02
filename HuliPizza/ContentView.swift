//
//  ContentView.swift
//  HuliPizza
//
//  Created by Anthony Rubbo on 3/26/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = CreateOrderViewModel()
    
    var body: some View {
        VStack {
            ProductListView(products: vm.products) { product in
                vm.addProduct(product)
            }
            CartSummaryView(selectedProducts: vm.selectedProducts, total: vm.total, quantity: vm.quantity) { item in
                vm.deleteProduct(item)
            }
            
        }
    }
}

struct ProductListView: View {
    let products: [Product]
    let onProductTap: (Product) -> Void
    
    var body: some View {
        List(products) { product in
            Button {
                onProductTap(product)
            } label: {
                HStack {
                    Text(product.name)
                    Spacer()
                    Text(product.price, format: .currency(code: "USD"))
                }
            }
        }
    }
}

struct CartSummaryView: View {
    let selectedProducts: [CartItem]
    var total: Int
    var quantity: Int
    var onProductDelete: (IndexSet) -> Void
    
    var body: some View {
        VStack{
            Text("Items: \(quantity)")
            Text("Total: $\(total)")
            List {
                ForEach(selectedProducts) { item in
                    HStack {
                        Text(item.product.name)
                        Text("\(item.quantity)")
                        Spacer()
                        Text(item.total, format: .currency(code: "USD"))
                    }
                }
                .onDelete { index in
                    onProductDelete(index)
                }
            }
            .listStyle(.automatic)
        }
    }
}

#Preview {
    ContentView()
}
