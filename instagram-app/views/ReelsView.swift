//
//  ReelsView.swift
//  instagram-app
//
//  Created by Adit on 29/12/21.
//

import SwiftUI
import AVKit

struct ReelsView: View {
    
    @State var currentReel = ""
    
    // Extra Avplayer form media file..
    @State var reels = MediaFileJSON.map { item -> Reel in
        
        let url = Bundle.main.path(forResource: item.url,
            ofType: "mp4") ?? ""
        
        let player = AVPlayer(url: URL(fileURLWithPath: url))
        
        return Reel(player: player, mediaFile: item)
    }
    
    
    var body: some View {
        
        
       // Setting Width and Height for rotation view
        
        GeometryReader { proxy in
            
            let size = proxy.size
            
            // Vertical page tab view
            TabView(selection: $currentReel) {
                
                ForEach($reels) { $reel in
                    
                    ReelsPlayer(reel: $reel, currentReel: $currentReel)
                    // Setting Width
                    .frame(width: size.width)
                    // Rotating Content...
                    .rotationEffect(.init(degrees: -90))
                    .ignoresSafeArea(.all, edges: .top)
                    .tag(reel.id)
                }
            }
            // Rotating View..
            .rotationEffect(.init(degrees: 90))
            // Since view is rotated setting height as width...
            .frame(width: size.height)
            .tabViewStyle(.page(indexDisplayMode: .never))
            // Setting max width...
            .frame(width: size.width)
        }
        .ignoresSafeArea(.all, edges: .top)
        .background(Color.black.ignoresSafeArea())
        // Setting initial reel..
        .onTapGesture {
            currentReel = reels.first?.id ?? ""
        }
    }
}

struct ReelsView_Previews: PreviewProvider {
    static var previews: some View {
        ReelsView()
    }
}


struct ReelsPlayer: View {
    
    @Binding var reel: Reel
    
    @Binding var currentReel: String
    
    // Expanding title if its clicked...
    @State var showMore = false
    
    @State var isMuted = false
    @State var volumeAnimation = false
    
    var body: some View {
        
        ZStack {
            
            // safe Check...
            if let player = reel.player {
                
                CustomVideoPlayer(player: player)
                
                // Play Video
                GeometryReader { proxy -> Color in
                    
                    let minY = proxy.frame(in: .global).minY
                    
                    let size = proxy.size
                    
                    DispatchQueue.main.async {
                        
                        if -minY < (size.height / 2) && minY < (size.height / 2)
                                && currentReel == reel.id{
                            
                            player.play()
                        }
                        else {
                            player.pause()
                        }
                    }
        
                    return Color.clear
                }
                
                // Volume Control
                Color.black
                    .opacity(0.01)
                    .frame(width: 120, height: 120)
                    .onTapGesture {
                        if volumeAnimation {
                            return
                        }
                        
                        isMuted.toggle()
                        // Muting player
                        player.isMuted = isMuted
                        withAnimation{volumeAnimation.toggle()}
                        
                        // Closing animation
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                            
                            withAnimation{volumeAnimation.toggle()}
                        }
                        
                    }
                
                
                Color.black.opacity(showMore ? 0.35 : 0)
                    .onTapGesture {
                        // Closing
                        withAnimation{showMore.toggle()}
                    }
                
                VStack {
                    
                    HStack(alignment: .bottom) {
                        
                        VStack(alignment: .leading, spacing: 10) {
                            
                            HStack(spacing: 15) {
                                
                                Image("profile5")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 35, height: 35)
                                    .clipShape(Circle())
                                
                                Text("nickyazalea")
                                    .font(.callout.bold())
                                
                                Button {
                                    
                                } label: {
                                    Text("Following")
                                        .font(.caption.bold())
                                }

                            }
                            // Title Custom View...
                            ZStack {
                                if showMore {
                                    
                                    ScrollView(.vertical, showsIndicators: false) {
                                        
                                        // your extra text...
                                        Text(reel.mediaFile.title + sampleText)
                                            .font(.callout)
                                            .fontWeight(.semibold)
                                    }
                                    .frame(height: 120)
                                    .onTapGesture {
                                        withAnimation{showMore.toggle()}
                                    }
                                }
                                else {
                                    
                                    Button {
                                        
                                        withAnimation { showMore.toggle()}
                                        
                                    } label: {
                                        HStack {
                                            
                                            Text(reel.mediaFile.title)
                                                .font(.callout)
                                                .fontWeight(.semibold)
                                                .lineLimit(1)
                                            
                                            Text("more")
                                                .font(.callout.bold())
                                                .foregroundColor(.gray)
                                        }
                                        .padding(.top,6)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                }
                            }
                        }
                        Spacer(minLength: 20)
                        
                        // List of Buttons...
                        
                        ActionButtons(reel: reel)
                    }
                    
                    // Music View
                    HStack {
                        
                        Text("Original Sound DJ Astin & DJ Nicky")
                            .font(.caption)
                            .fontWeight(.semibold)
                        
                        Spacer(minLength: 20)
                        
                        Image("profile5")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .cornerRadius(6)
                            .background(
                            
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.white, lineWidth: 3)
                            )
                            .offset(x: -5)
                    }
                    .padding(.top, 10)
                }
                .padding(.horizontal)
                .padding(.bottom, 20)
                .foregroundColor(.white)
                .frame(maxHeight: .infinity, alignment: .bottom)
                
                Image(systemName: isMuted ? "speaker.slash.fill" : "speaker.wave.2.fill")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.secondary)
                    .clipShape(Circle())
                    .foregroundColor(.black)
                    .opacity(volumeAnimation ? 1 : 0)
            }
        }
    }
}

struct ActionButtons: View {
    var reel: Reel
    
    var body: some View {
        
        VStack(spacing: 25) {
            
            Button {
                
            } label: {
                VStack(spacing: 10) {
                    Image(systemName: "suit.heart")
                        .font(.title)
                    
                    Text("4,5M")
                        .font(.caption.bold())
                    
                }
            }
            
            Button {
                
            } label: {
                VStack(spacing: 10) {
                    Image("Com")
                        .font(.title)
                    
                    Text("666")
                        .font(.caption.bold())
                    
                }
            }
            
            Button {
                
            } label: {
                VStack(spacing: 10) {
                    Image(systemName: "paperplane")
                        .font(.title)
                }
            }
            
            Button {
                
            } label: {
                    Image(systemName: "ellipsis")
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
            }
        }
    }
}

let sampleText = "Lantai licin kena pel...udah tau miskin sok pula tidur di hotel...GENIT gaya elit ekonomi sulit"
