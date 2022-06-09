//
//  ProfileView.swift
//  instagram-app
//
//  Created by Adit on 03/01/22.
//

import SwiftUI

struct ProfileView: View {
    // First Tab Image...
    @State var selectedTab: String = "square.grid.3x3"
    // For Smooth Effect
    @Namespace var animation
    
    // For Dark Mode Adoption..
    @Environment(\.colorScheme) var scheme
    
    
    @State var topHeaderOffset: CGFloat = 0
    
    
    var body: some View {
    
        VStack {
                
                HStack(spacing: 15) {
                    
                    Button(action: {}, label: {
                        Text("adityaprtama70")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        })
                    
                    Button(action: {}, label: {
                        Image("dropdown")
                            .font(.title2)
                            .foregroundColor(.primary)
                        })
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {}, label: {
                        Image("add")
                            .font(.title)
                            .foregroundColor(.primary)
                        })
                    Button(action: {}, label: {
                        Image("Burger menu")
                            .font(.title)
                            .foregroundColor(.primary)
                        })
                    }
                    .padding([.horizontal, .top])
                    .overlay(
                        
                        GeometryReader{proxy -> Color in
                            
                            let minY = proxy.frame(in: .global).minY
                            
                            
                            DispatchQueue.main.async {
                                if topHeaderOffset == 0{
                                    topHeaderOffset = minY
                                }
                            }
                            
                            return Color.clear
                        }
                            .frame(width: 0, height: 0)
                        
                        , alignment: .bottom
                    )
            
            
                ScrollView(.vertical, showsIndicators: false, content: {
                    
                    VStack {
                        
                        Divider()
                        
                        HStack {
                            Image("aditya")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 77.77, height: 77.77)
                                .overlay(
                                
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                                    .padding(6)
                                    .background(Color.blue)
                                    .clipShape(Circle())
                                    .padding(2)
                                    .background(Color.white)
                                    .clipShape(Circle())
                                    .offset(x: 5, y: 8)
                                
                                ,alignment: .bottomTrailing
                        )
                            
                            VStack {
                                Text("12")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.primary)
                                
                                Text("Posts")
                                    .font(Font.custom("SF UI Display", size: 15))
                                    .foregroundColor(.black)
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.leading, 40)
                            
                            VStack {
                                Text("684")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.primary)
                                
                                Text("Followers")
                                    .font(Font.custom("SF UI Display", size: 15))
                                    .foregroundColor(.black)
                            }
                            .frame(maxWidth: .infinity)
                            
                            VStack {
                                Text("690")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.primary)
                                
                                Text("Following")
                                    .font(Font.custom("SF UI Display", size: 15))
                                    .foregroundColor(.black)
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.trailing, 20)
                    }
                        .padding()
                        
                        VStack(alignment: .leading, spacing: 4, content: {
                            Text("Aditya Pratama")
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                            
                            Text("Movie")
                                .fontWeight(.semibold)
                                .foregroundColor(.gray)
                    })
                            .padding(.trailing, 280)
                        
                        // Edit Profile Button
                        
                        HStack(spacing: 10) {
                            
                            Button(action: {}, label: {
                                Text("Edit Profile")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.primary)
                                    .padding(.vertical, 10)
                                    .frame(maxWidth: .infinity)
                                    .background(
                                    
                                        RoundedRectangle(cornerRadius: 4)
                                            .stroke(Color.gray)
                                    )
                            })
                            
                            Button(action: {}, label: {
                                Text("Insight")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.primary)
                                    .padding(.vertical, 10)
                                    .frame(maxWidth: .infinity)
                                    .background(
                                    
                                        RoundedRectangle(cornerRadius: 4)
                                            .stroke(Color.gray)
                                    )
                            })
                            
                            Button(action: {}, label: {
                                Text("Contact")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.primary)
                                    .padding(.vertical, 10)
                                    .frame(maxWidth: .infinity)
                                    .background(
                                    
                                        RoundedRectangle(cornerRadius: 4)
                                            .stroke(Color.gray)
                                    )
                            })
                        }
                        .padding([.horizontal])
                        
                        // Highlight & Button
                        
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            
                            HStack(spacing: 15) {
                                
                                
                                Button(action: {}, label: {
                                    VStack {
                                        
                                        Image(systemName: "swift")
                                            .font(.title2)
                                            .foregroundColor(.primary)
                                            .padding(18)
                                            .background(Circle().stroke(Color.gray))
                                        
                                        Text("Swift UI")
                                            .foregroundColor(.primary)
                                        
                                }
                            })
                                
                                Button(action: {}, label: {
                                    VStack {
                                        
                                        Image(systemName: "film")
                                            .font(.title2)
                                            .foregroundColor(.primary)
                                            .padding(18)
                                            .background(Circle().stroke(Color.gray))
                                        
                                        Text("Movie")
                                            .foregroundColor(.primary)
                                        
                                }
                            })
                                
                                Button(action: {}, label: {
                                    VStack {
                                        
                                        Image(systemName: "music.note")
                                            .font(.title2)
                                            .foregroundColor(.primary)
                                            .padding(18)
                                            .background(Circle().stroke(Color.gray))
                                        
                                        Text("Tunes")
                                            .foregroundColor(.primary)
                                        
                                }
                            })

                        }
                            .padding([.horizontal, .top])
                    })
                        
                        GeometryReader{ proxy -> AnyView in
                            
                            let minY = proxy.frame(in: .global).minY
                            
                            let offset = minY - topHeaderOffset
                            
                            print(offset)
                            
                            return AnyView(
                                // Top Bar
                                
                                HStack(spacing: 0) {
                                    
                                    TabBarButton(image: "square.grid.3x3", isSystemImage: true, animation: animation, selectedTab: $selectedTab)
                                    
                                    TabBarButton(image: "reels", isSystemImage: false, animation: animation, selectedTab: $selectedTab)
                                    
                                    TabBarButton(image: "mentions", isSystemImage: false, animation: animation, selectedTab: $selectedTab)
                                }
                              // Max Frame
                                .frame(height: 50, alignment: .bottom)
                                .background(scheme == .dark ? Color.black : Color.white)
                                .offset(y: offset < 0 ? -offset : 0)
                            )
                        }
                        .frame(height: 50)
                        .zIndex(4)
                    // Tab View
                        ZStack {
                            
                            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 2), count: 3), spacing: 2, content: {
                                
                                ForEach(1...30,id: \.self){index in
                                    
                                    GeometryReader{proxy in
                                        let width = proxy.frame(in: .global).width
                                        
                                        ImageView(index: index, width: width)
                                    }
                                    .frame(height: 120)
                                    
                                }
                            })
                        }
                }
            })
        }
    }
}

struct ImageView: View {
    
    var index: Int
    var width: CGFloat
    
    var body: some View{
        VStack {
            
            let imageName = index
            
            
            Image("post\(imageName)")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: width, height: 120)
                .cornerRadius(0)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct TabBarButton: View {
    
    var image: String
    var isSystemImage: Bool
    var animation: Namespace.ID
    @Binding var selectedTab: String
    
    var body: some View {
        
        Button(action: {
            withAnimation(.easeOut) {
                selectedTab = image
            }
            
        }, label: {
            VStack(spacing: 12) {
                
                (
                    isSystemImage ? Image(systemName: image) : Image(image)
                    
                )
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 28, height: 28)
                    .foregroundColor(selectedTab == image ? .primary : .gray)
                
                ZStack {
                    
                    if selectedTab == image {
                        Rectangle()
                            .fill(Color.primary)
                    }
                    else {
                        Rectangle()
                            .fill(Color.clear)
                    }
                }
                .frame(height: 1)
            }
        })
    }
}

