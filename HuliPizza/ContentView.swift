//
//  ContentView.swift
//  HuliPizza
//
//  Created by Anthony Rubbo on 3/26/25.
//

import SwiftUI

struct ContentView: View {
    var orders = [1, 2, 3, 4, 6]
    var showOrders = false
    
    var body: some View {
        VStack {
            HeaderView()
            if showOrders {
                OrderView(orders: orders)
                    .cornerRadius(10)
            } else {
                MenuItemView()
                    .padding(5)
                    .background(Color("Sky"), in: RoundedRectangle(cornerRadius: 10))
                MenuView()
            }
            Spacer()
        }
        .padding()
        .background(.linearGradient(colors: [.cyan, Color("Surf"), Color("Sky"), .white], startPoint: .topLeading, endPoint: .bottom))
    }
}

#Preview {
    ContentView()
}
