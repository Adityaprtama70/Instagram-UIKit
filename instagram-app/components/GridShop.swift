//
//  GridShop.swift
//  instagram-app
//
//  Created by Adit on 25/01/22.
//

import SwiftUI

struct GridShop: View {
    var images: [String] = ["shop1", "shop2", "shop3", "shop4", "shop5"]
    
    var columnGrid: [GridItem] = [GridItem(.flexible(), spacing: 1), GridItem(.flexible(), spacing: 1), GridItem(.flexible(), spacing: 1)]
    
    var body: some View {
        LazyVGrid(columns: columnGrid, spacing: 1) {
            ForEach((0...44), id: \.self) { image in
                Image(images[image % images.count])
                    .resizable()
                   // .scaledToFit()
                    .frame(width: (UIScreen.main.bounds.width / 3) - 1, height: (UIScreen.main.bounds.width / 3) - 1)
                    .clipped()
            }
  
        }
    }
}

struct GridShop_Previews: PreviewProvider {
    static var previews: some View {
        GridShop()
    }
}
