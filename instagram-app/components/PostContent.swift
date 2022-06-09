//
//  PostContent.swift
//  instagram-app
//
//  Created by Adit on 28/12/21.
//

import SwiftUI

struct PostContent: View {
   var image: String = "zidny"
    
    
    var body: some View {
        VStack(spacing: 0.0) {
            Image(image)
                .resizable()
                .frame(width: .infinity)
                .aspectRatio(contentMode: .fit)
            
            HStack {
                HStack(spacing: 10.0) {
                    Image("heart")
                    Image("comment")
                    Image("share")
                }
                
                Spacer()
                
                Image("bookmark")
            }
            .padding(.horizontal, 12)
            .padding(.vertical,9)
        }
    }
}

struct PostContent_Previews: PreviewProvider {
    static var previews: some View {
        PostContent()
    }
}
