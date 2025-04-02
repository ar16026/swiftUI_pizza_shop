//
//  RatingsView.swift
//  HuliPizza
//
//  Created by Anthony Rubbo on 4/2/25.
//

import SwiftUI

struct RatingsView: View {
    var rating: Int
    
    var body: some View {
        HStack {
            ForEach(1...6, id: \.self) { i in
                Image(systemName: i <= rating ? "fork.knife.circle.fill" : "circle")
            }
        }
    }
}

#Preview {
    RatingsView(rating: 5)
}
