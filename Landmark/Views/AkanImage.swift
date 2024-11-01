//
//  AkanImage.swift
//  Landmark
//
//  Created by Deepesh on 2024/11/01.
//

import SwiftUI

struct AkanImage: View {
    var image : Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 8)
    }
}

#Preview {
    AkanImage(image : Image("turtlerock"))
}
