//
//  MapView.swift
//  Swift Course
//
//  Created by muhammed samil demir on 7.02.2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinates : CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 39.750, longitude: 37.015), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{
            setRegion(coordinates)
        }
        
    }
    
    
    func setRegion(_ coordinate : CLLocationCoordinate2D) -> Void {
        region = MKCoordinateRegion(
            center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
    
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinates: landmarks[2].locationCoordinate)
    }
}
