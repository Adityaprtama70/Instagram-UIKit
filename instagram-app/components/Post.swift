//
//  Post.swift
//  instagram-app
//
//  Created by Adit on 28/12/21.
//

import SwiftUI

struct Post: View {
    var image: String = "zidny"
    var description: String = "Hi"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            PostHeader()
            
            PostContent(image: image)
            
        // Like
            HStack {
                HStack(spacing: 10.0) {
                    Image("profile")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .cornerRadius(50)
                    
                    Text("Liked by adityaprtama70 to and 2.158.330 others")
                        .font(.footnote)
                        .frame(width: .infinity)
                        .padding(.horizontal, 3)
                }
            }
            .padding(.horizontal,12)
            .padding(.vertical, 1)
            
      // Caption
            HStack {
                Text("zidnylthfa")
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text(description)
                    .font(.footnote)
                    .frame(width: .infinity)
                    .padding(.horizontal, 1)
            }
            .padding(.horizontal,12)
            .padding(.vertical, 5)
            
      // Comment
            HStack {
                HStack (spacing: 7.0) {
                    Image("profile")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .cornerRadius(50)
                    
                    Text("Add Comment...")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 1)
                
                Spacer()
                
                HStack {
                    Text("😍")
                    Text("😭")
                    Image(systemName: "plus.circle")
                        .foregroundColor(.secondary)
                }
            }
            .padding(.horizontal, 3)
            .padding(.vertical, 5)
        }
    }
}

struct Post_Previews: PreviewProvider {
    static var previews: some View {
        Post()
    }
}
