//
//  MediaFile.swift
//  instagram-app
//
//  Created by Adit on 29/12/21.
//

import SwiftUI

// Sample Model and Reels Video

struct MediaFile: Identifiable {
    var id = UUID().uuidString
    var url: String
    var title: String
    var isExpended: Bool = false
}

var MediaFileJSON = [

    MediaFile(url: "reels 1", title: "DJ Astin & DJ Nicky..."),
    MediaFile(url: "reels 2", title: "Isa_aprilian..."),
    MediaFile(url: "reels 3", title: "Let’s Get Poppin Outfit Transition!..."),
    MediaFile(url: "reels 4", title: "Instagram UI Kit..."),
    MediaFile(url: "reels 5", title: "NBA..."),
]

