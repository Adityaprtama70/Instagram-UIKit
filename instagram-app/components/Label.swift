//
//  Label.swift
//  instagram-app
//
//  Created by Adit on 24/01/22.
//

import SwiftUI

struct Label: View {
    var text: String = "Design"
    
    var body: some View {
        Text(text)
            .font(.caption)
            .fontWeight(.bold)
            .padding(.horizontal, 24)
            .padding(.vertical, 10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke()
            )
    }
}

struct Label_Previews: PreviewProvider {
    static var previews: some View {
        Label()
    }
}
