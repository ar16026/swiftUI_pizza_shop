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
            ZStack {
                Image("surfBanner")
                    .resizable()
                    .scaledToFit()
                Text("Huli Pizza Company")
                    .background()
            }
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
                    HStack(alignment: .firstTextBaseline) {
                        Text("Your Order Item \(i)")
                        Spacer()
                        Text(19.90, format: .currency(code: "USD"))
                    }
                }
            }
            VStack {
                if let image = UIImage(named: "0_lg") {
                    Image("0_lg")
                } else {
                    Image("surfboard_lg")
                }
                Text("Margherita")
                Text("Description")
            }
            ScrollView {
                ForEach(1...25, id: \.self) { i in
                    HStack(alignment: .top, spacing: 15) {
                        if let image = UIImage(named: "\(i)_sm") {
                            Image(uiImage: image)
                        } else {
                            Image("surfboard_sm")
                        }
                        VStack(alignment: .leading) {
                            Text("Margherita")
                            Text("Description")
                        }
                    }
                    Spacer()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
