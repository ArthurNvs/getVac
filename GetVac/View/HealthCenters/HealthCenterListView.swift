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
                HealthCenterItemListView(healthCenter: item)
              }
            } //: ForEach
          } //: List
          
          Spacer()
          
          NavigationLink(destination: GifImage("vacinometro")) {
            VStack {
              HStack {
                Text("VACINÔMETRO")
                  .font(.title3)
                  .fontWeight(.heavy)
                  .foregroundColor(.accentColor)
                
                Image(systemName: "arrow.right.circle.fill")
              }
              
              Text("Confira aqui o status da vacinação no DF")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .lineLimit(2)
              
            } //: VStack
          } //: NavigationList
          .padding()
        } //: VStack
      } //: NavigationView
      .navigationBarTitle(Text("Current Name"), displayMode: .inline)
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
