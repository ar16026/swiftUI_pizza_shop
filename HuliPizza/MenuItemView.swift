//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by Anthony Rubbo on 4/2/25.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack {
            if let _ = UIImage(named: "0_lg") {
                Image("0_lg")
            } else {
                Image("surfboard_lg")
            }
            Text("Margherita")
            RatingsView(rating: 5)
        }
    }
}

#Preview {
    MenuItemView()
}
