//
//  ContentView.swift
//  HuliPizza
//
//  Created by Anthony Rubbo on 3/26/25.
//

import SwiftUI

struct ContentView: View {
    var orders: [Int] = [1, 2, 3, 4, 6]
    
    var body: some View {
        VStack {
            HeaderView()
            OrderView(orders: orders)
            MenuItemView()
            MenuView()
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
