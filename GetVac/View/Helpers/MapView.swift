//
//  MapView.swift
//  GetVac
//
//  Created by Arthur Neves on 11/12/21.
//

import SwiftUI
import MapKit


struct MapView: View {
  var coordinate: CLLocationCoordinate2D
  
  @State private var region = MKCoordinateRegion(
    center: CLLocationCoordinate2D(latitude: -47.891445397031276, longitude: -15.742946310268854),
    span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
  )
  
  private func setRegion(_ coordinate: CLLocationCoordinate2D) {
    region = MKCoordinateRegion(
      center: coordinate,
      span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    )
  }
  
  var body: some View {
    Map(coordinateRegion: $region)
      .onAppear {
        setRegion(coordinate)
      }
  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
  }
}
