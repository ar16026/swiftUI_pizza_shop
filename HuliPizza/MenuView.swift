//
//  MenuView.swift
//  HuliPizza
//
//  Created by Anthony Rubbo on 4/2/25.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ScrollView {
            ForEach(1...25, id: \.self) { i in
                MenuRowView(item: i)
                Spacer()
            }
        }
    }
}

#Preview {
    MenuView()
}
