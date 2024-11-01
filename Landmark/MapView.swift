//
//  MapView.swift
//  Landmark
//
//  Created by Deepesh on 2024/11/01.
//

import SwiftUI
import MapKit
public let coordinate = CLLocationCoordinate2D(latitude: 35.68212910206595, longitude: 139.73599814873106)
struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region)) {
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
    MapView()
}
