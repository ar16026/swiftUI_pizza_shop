//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Anthony Rubbo on 4/2/25.
//

import SwiftUI

struct OrderRowView: View {
    var order: Int
    
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Text("Your Order Item \(order)")
            Spacer()
            Text(19.90, format: .currency(code: "USD"))
        }
    }
}

#Preview {
    OrderRowView(order: 1)
}
