//
//  HomeView.swift
//  instagram-app
//
//  Created by Adit on 28/12/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0.0) {
            Header()
        
            ScrollView(.vertical, showsIndicators: false) {
                Stories()
                
                Divider()
                
                Post()
                
                Post(image: "zidny1", description: "Xixi")
                
                Post(image: "zidny2", description: "Ciss")
                
                Post(image: "zidny3", description: "Huhu")
                
                Post(image: "zidny4", description: "C")
                
                Post(image: "zidny5", description: "morning")
            }
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
