//
//  LandMarkList.swift
//  Landmark
//
//  Created by Deepesh on 2024/11/01.
//

import SwiftUI

struct LandMarkList: View {
    var body: some View {
        List(landmarks){ landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandMarkList()
}
