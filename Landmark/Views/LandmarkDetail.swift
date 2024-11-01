//
//  LandmarkDetail.swift
//  Landmark
//
//  Created by Deepesh on 2024/11/01.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark : Landmark
    var body : some View{
        ScrollView() {
            MapView(coordinate: landmark.locationCoordinate).frame(height: 300)
            AkanImage(image: landmark.image).offset(y:-130)
                .padding(.bottom, -130)
            VStack(alignment: .leading){
                Text(landmark.name)
                .font(.title)
                .fontWeight(.bold)
                HStack(alignment: .center) {
                    Text(landmark.park)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Spacer()
                    Text(landmark.state)
                    .font(.subheadline)
                }
                Divider()
                Text("Who we are").font(.title)
                Text(landmark.description)
            }
            .padding()
            .background(Color.gray.opacity(0.1))
        }
    }
}

#Preview {
    LandmarkDetail(landmark : landmarks[0])
}
