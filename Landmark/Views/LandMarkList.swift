//
//  LandMarkList.swift
//  Landmark
//
//  Created by Deepesh on 2024/11/01.
//

import SwiftUI

struct LandMarkList: View {
    var body: some View {
        NavigationSplitView{
            List(landmarks){ landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label : {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandMarkList()
}
