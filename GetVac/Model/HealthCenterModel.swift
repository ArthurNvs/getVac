//
//  healthCenter.swift
//  GetVac
//
//  Created by Arthur Neves on 11/12/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct HealthCenterModel: Hashable, Codable, Identifiable {
  var id: Int
  var name: String
  var city: String
  var state: String
  
  var doses: Doses
  struct Doses: Hashable, Codable {
    var d1: [String]
    var d2: [String]
    var booster: [String]
    var aditional: String
  }
  
  private var coordinates: Coordinates
  struct Coordinates: Hashable, Codable {
      var latitude: Double
      var longitude: Double
    }
  
}
