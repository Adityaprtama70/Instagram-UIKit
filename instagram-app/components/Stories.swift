//
//  Stories.swift
//  instagram-app
//
//  Created by Adit on 28/12/21.
//

import SwiftUI

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10.0) {
                Story(image: "profile", name: "adityaprtama70")
                Story(image: "profile2", name: "indikashinta")
                Story(image: "profile3", name: "dindaptrv")
                Story(image: "profile4", name: "isa_aprilian")
                Story(image: "profile5", name: "nickyazalea")
                Story(image: "profile6", name: "hasyakyla")
                Story(image: "profile7", name: "bkrbrother")
                Story(image: "profile8", name: "sam_bram")
                Story(image: "profile9", name: "febryrinjani")
                Story(image: "profile10", name: "ariefmuhammad")
            }
            .padding(.horizontal, 8)
        }
        .padding(.vertical, 10)
    }
}

struct Stories_Previews: PreviewProvider {
    static var previews: some View {
        Stories()
    }
}
