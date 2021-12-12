//
//  HealthCenterItemListView.swift
//  GetVac
//
//  Created by Arthur Neves on 12/12/21.
//

import SwiftUI

struct HealthCenterItemListView: View {
  var healthCenter: HealthCenter
  var body: some View {
    HStack(alignment: .center, spacing: 16) {
      Image(healthCenter.image)
        .resizable()
        .scaledToFill()
        .frame(width: 90, height: 90)
        .clipShape(
          RoundedRectangle(cornerRadius: 12)
        )
      
      VStack(alignment: .leading, spacing: 8) {
        Text(healthCenter.name)
          .font(.title3)
          .fontWeight(.heavy)
          .foregroundColor(.accentColor)
        
        Text(healthCenter.city)
          .font(.footnote)
          .multilineTextAlignment(.leading)
          .lineLimit(2)
      } //: VStack
    } //: HStack
  }
}

struct HealthCenterItemListView_Previews: PreviewProvider {
  static var previews: some View {
    HealthCenterItemListView(healthCenter: ModelData().healthCenters[0])
  }
}
