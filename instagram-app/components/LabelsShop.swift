//
//  LabelsShop.swift
//  instagram-app
//
//  Created by Adit on 26/01/22.
//

import SwiftUI

struct LabelsShop: View {
    var body: some View {
        ScrollView(.horizontal,
                   showsIndicators: false) {
            HStack(spacing: 8.0) {
                Label(text: "Shops")
                Label(text: "Collections")
                Label(text: "Videos")
                Label(text: "Guides")
                Label(text: "Editors' picks")
            }
            .padding(.horizontal, 16)
            .frame(width: .infinity, height: 38)
        }
    }
}

struct LabelsShop_Previews: PreviewProvider {
    static var previews: some View {
        LabelsShop()
    }
}
