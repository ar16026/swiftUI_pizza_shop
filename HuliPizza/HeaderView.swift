//
//  File.swift
//  HuliPizza
//
//  Created by Anthony Rubbo on 4/2/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            Image("surfBanner")
                .resizable()
                .scaledToFit()
            Text("Huli Pizza Company")
                .background()
        }
    }
}

#Preview {
    HeaderView()
}
