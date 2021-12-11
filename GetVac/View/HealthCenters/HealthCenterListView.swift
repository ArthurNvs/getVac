//
//  HealthCenterList.swift
//  GetVac
//
//  Created by Arthur Neves on 11/12/21.
//

import SwiftUI

struct HealthCenterListView: View {
  let healthCenters: [HealthCenter]
  
  
  var body: some View {
    NavigationView {
      List {
        ForEach(healthCenters) { healthCenter in
          Text("\(healthCenter.name)")
        } //: ForEach
      } //: List
    } //: NavigationView
  }
}

struct HealthCenterList_Previews: PreviewProvider {
  static var healthCenters = ModelData().healthCenters
  
  static var previews: some View {
    HealthCenterListView(healthCenters: healthCenters)
      .environmentObject(ModelData())
  }
}
