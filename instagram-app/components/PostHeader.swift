//
//  PostHeader.swift
//  instagram-app
//
//  Created by Adit on 28/12/21.
//

import SwiftUI

struct PostHeader: View {
    var body: some View {
        HStack {
            HStack {
                Image("zid")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                
                Text("zidnylthfa")
                    .font(.caption)
                    .fontWeight(.bold)
            }
            
            Spacer()
            
            Image("more")
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 8)
    }
}

struct PostHeader_Previews: PreviewProvider {
    static var previews: some View {
        PostHeader()
    }
}
