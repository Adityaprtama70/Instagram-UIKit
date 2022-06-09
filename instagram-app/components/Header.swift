//
//  Header.swift
//  instagram-app
//
//  Created by Adit on 28/12/21.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack {
            Image("logo")
            
            Spacer()
            
            HStack(spacing: 20.0) {
                Image("add")
                Image("heart")
                Image("messenger")
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 3)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
