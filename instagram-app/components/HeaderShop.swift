//
//  HeaderShop.swift
//  instagram-app
//
//  Created by Adit on 25/01/22.
//

import SwiftUI

struct HeaderShop: View {
    var body: some View {
        HStack {
            Text("Shop")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            Spacer()
            
            HStack(spacing: 20.0) {
                Image("shop")
                Image("Burger menu")
                    .font(.title)
                    .foregroundColor(.primary)
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 3)
    }
}

struct HeaderShop_Previews: PreviewProvider {
    static var previews: some View {
        HeaderShop()
    }
}
