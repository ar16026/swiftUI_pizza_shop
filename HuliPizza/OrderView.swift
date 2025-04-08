//
//  OrderView.swift
//  HuliPizza
//
//  Created by Anthony Rubbo on 4/2/25.
//

import SwiftUI

struct OrderView: View {
    var orders: [Int]
    
    var body: some View {
        VStack {
            Label {
                Text(59.99, format: .currency(code: "USD"))
            } icon: {
                Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
            }
            HStack {
                Text("Order Pizza")
                    .font(.title)
                Spacer()
            }
            ScrollView {
                ForEach(orders, id: \.self) {i in
                    OrderRowView(order: i)
                    // inserts padding on all four sides unless specified
                        .padding(.bottom, 5)
                        .padding([
                            .leading,
                            .trailing,
                        ], 7)
                }
            }
        }
        .padding()
        .background(Color("Surf"))
    }
}

#Preview {
    OrderView(orders: [1, 2, 3, 4, 6])
}
