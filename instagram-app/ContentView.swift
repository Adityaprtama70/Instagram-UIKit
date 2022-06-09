//
//  ContentView.swift
//  instagram-app
//
//  Created by Adit on 23/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}


struct TabBar: View {
    
    @State var currentTab = "Reels"
    
    var body: some View {
        VStack(spacing: 0.0) {
            TabView {
                HomeView()
                    .tabItem {
                        Image("Home-1")
                    }
                SearchView(text: "")
                    .tabItem {
                        Image("search")
                    }
                ReelsView()
                    .tabItem {
                        Image("reels")
                    }
                ShopView(text: "")
                    .tabItem {
                        Image("shop")
                    }
                ProfileView()
                    .tabItem {
                        Image("Ruffles")
                }
            }
        }
    }
}
