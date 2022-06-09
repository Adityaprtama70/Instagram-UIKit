//
//  ShopView.swift
//  instagram-app
//
//  Created by Adit on 25/01/22.
//

import SwiftUI

struct ShopView: View {
    @State var text: String
    
    var body: some View {
        VStack (spacing: 1) {
            HeaderShop()
            
            VStack (spacing: 10.0) {
                SearchInput(text: text)
                    .padding(.horizontal, 16)
                
                LabelsShop()
                
                ScrollView(.vertical, showsIndicators: false) {
                    GridShop()
                }
            }
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView(text: "")
    }
}
