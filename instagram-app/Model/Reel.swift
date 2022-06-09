//
//  Reel.swift
//  instagram-app
//
//  Created by Adit on 29/12/21.
//

import SwiftUI
import AVKit

struct Reel: Identifiable {
    
    var id = UUID().uuidString
    var player: AVPlayer?
    var mediaFile: MediaFile
}

