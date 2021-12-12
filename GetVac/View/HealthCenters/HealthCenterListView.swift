//
//  HealthCenterList.swift
//  GetVac
//
//  Created by Arthur Neves on 11/12/21.
//

import SwiftUI

struct HealthCenterListView: View {
  @EnvironmentObject var viewStatus: ViewStatus
  let healthCenters: [HealthCenter]
  
  var body: some View {
    VStack {
      NavigationBarView()
        .padding(.top, 37)
        .background(Color.white.frame(height: 100))
      
      NavigationView {
          VStack {
            
            List {
              ForEach(healthCenters) { item in
                NavigationLink(destination: HealthCenterDetailView(healthCenter: item)) {
                  Text("\(item.name) - \(item.city)")
                }
              } //: ForEach
            } //: List
          }
      } //: NavigationView
    } //: VStack
  }
}

struct HealthCenterList_Previews: PreviewProvider {
  static var healthCenters = ModelData().healthCenters
  
  static var previews: some View {
    HealthCenterListView(healthCenters: healthCenters)
      .environmentObject(ModelData())
      .environmentObject(ViewStatus())
  }
}
