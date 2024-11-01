//
//  MapView.swift
//  Landmark
//
//  Created by Deepesh on 2024/11/01.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate : CLLocationCoordinate2D
    var body: some View {
        Map(position: .constant(.region(region))) {
            Marker("My location", coordinate: coordinate)
        }
    }
    
    private var region: MKCoordinateRegion{
        MKCoordinateRegion(
            center : coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        )
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
