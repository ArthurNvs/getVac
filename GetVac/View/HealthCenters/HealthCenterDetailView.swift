//
//  HealthCenterDetailView.swift
//  GetVac
//
//  Created by Arthur Neves on 11/12/21.
//

import SwiftUI

struct HealthCenterDetailView: View {
  let healthCenter: HealthCenter
  
  var body: some View {
    VStack(alignment: .center, spacing: 10) {
      ScrollView(showsIndicators: false) {
        // Title
        Text(healthCenter.name.uppercased() + "\n" + healthCenter.city.uppercased())
          .font(.largeTitle)
          .fontWeight(.heavy)
          .multilineTextAlignment(.center)
          .padding(.vertical, 8)
          .foregroundColor(.primary)
          .background(
            Color("BlueColor")
              .frame(height: 6)
          )
        
        MapView(coordinate: healthCenter.locationCoordinate)
          .ignoresSafeArea(edges: .top)
          .frame(height: 300)
        
        HeadingView(headingImage: "clock.fill", headingText: "\(healthCenter.hours)")
        
        Image(healthCenter.image)
          .resizable()
          .scaledToFill()
          .frame(width: 300, height: 300)
          .clipShape(
            RoundedRectangle(cornerRadius: 9)
          )
        
        Spacer()
        
        HealthCenterDosesView(healthCenter: healthCenter)
        
        Text("Desenvolvido por Arthur Neves")
          .font(.footnote)
          .fontWeight(.bold)
          .foregroundColor(.accentColor)
      } //: ScrollView
    } //: VStack
    .padding()
  } //: ScrollView
}

struct HealthCenterDetailView_Previews: PreviewProvider {
  static var previews: some View {
    HealthCenterDetailView(healthCenter: ModelData().healthCenters[0])
  }
}
