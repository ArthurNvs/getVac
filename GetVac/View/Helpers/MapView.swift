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
  let point = [
    AnnotatedItem(name: "Location", coordinate: .init(latitude: 0, longitude: 0))
  ]
  
  @State private var region = MKCoordinateRegion(
    center: CLLocationCoordinate2D(latitude: -15.742946310268854, longitude: -47.891445397031276),
    span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
  )
  
  private func setRegion(_ coordinate: CLLocationCoordinate2D) {
    region = MKCoordinateRegion(
      center: coordinate,
      span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    )
  }
  
  var body: some View {
    Map(coordinateRegion: $region, annotationItems: point, annotationContent: { item in
      MapAnnotation(coordinate: coordinate) {
        MapAnnotationView()
      }
    })
      .onAppear {
        setRegion(coordinate)
      }
  }
}

struct AnnotatedItem: Identifiable {
  let id = UUID()
  var name: String
  var coordinate: CLLocationCoordinate2D
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView(coordinate: CLLocationCoordinate2D(latitude: -15.742946310268854, longitude: -47.891445397031276))
  }
}
