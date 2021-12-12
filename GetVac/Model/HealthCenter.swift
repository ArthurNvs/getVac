//
//  healthCenter.swift
//  GetVac
//
//  Created by Arthur Neves on 11/12/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct HealthCenter: Hashable, Codable, Identifiable {
  var id: Int
  var name: String
  var city: String
  var state: String
  var hours: String
  
  private var doses: Doses
  var d1: [String] {
    return doses.d1
  }
  var additional: String {
    return doses.aditional
  }
  struct Doses: Hashable, Codable {
    var d1: [String]
    var d2: [String]
    var booster: [String]
    var aditional: String
  }
  
  private var coordinates: Coordinates
  var locationCoordinate: CLLocationCoordinate2D {
      CLLocationCoordinate2D(
        latitude: coordinates.latitude,
        longitude: coordinates.longitude)
    }
  
  struct Coordinates: Hashable, Codable {
      var latitude: Double
      var longitude: Double
    }
  
}
