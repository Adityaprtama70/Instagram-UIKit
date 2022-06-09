//
//  Grid.swift
//  instagram-app
//
//  Created by Adit on 25/01/22.
//

import SwiftUI

struct Grid: View {
    var images: [String] = ["ditta",
                            "febry1",
                            "nicky1",
                            "dindaptrv",
                            "dinda",
                            "nicky2",
                            "zidny3",
                            "post12",
                            "shop3",
                            "tuan13",
                            "post1",
                            "post2",
                            "post3",
                            "post4",
                            "post5",
                            "post6",
                            "post10"]
    
    var columnGrid: [GridItem] = [GridItem(.flexible(), spacing: 1), GridItem(.flexible(), spacing: 1), GridItem(.flexible(), spacing: 1)]
    
    var body: some View {
        LazyVGrid(columns: columnGrid, spacing: 1) {
            ForEach((0...30), id: \.self) { image in
                Image(images[image % images.count])
                    .resizable()
                    .scaledToFit()
                    .frame(width: (UIScreen.main.bounds.width / 3) - 1, height: (UIScreen.main.bounds.width / 3) - 1)
                    .clipped()
            }
  
        }
    }
}

struct Grid_Previews: PreviewProvider {
    static var previews: some View {
        Grid()
    }
}
