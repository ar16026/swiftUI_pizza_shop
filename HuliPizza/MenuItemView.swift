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
                    // .clipShape(RoundedRectangle(cornerRadius: 10))
                    .cornerRadius(10)
            } else {
                Image("surfboard_lg")
            }
            VStack(alignment: .leading) {
                Text("Margherita")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("Surf"))
                    .padding(.leading)
                    .background(.linearGradient(colors: [Color("Surf"), Color("Sky").opacity(0.1)], startPoint: .leading, endPoint: .trailing), in: Capsule())
                ScrollView {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sit amet viverra turpis, ut auctor massa. Nullam id diam volutpat, aliquam velit sit amet, dictum erat. Cras tempor felis nec justo scelerisque ullamcorper. Vestibulum mollis consectetur tincidunt. Duis venenatis eget sem a dapibus. Donec pharetra velit lacus, at dictum mauris.")
                        .font(.custom("Georgia", size: 18, relativeTo: .body))
                }
            }
        }
    }
}

#Preview {
    MenuItemView()
}
