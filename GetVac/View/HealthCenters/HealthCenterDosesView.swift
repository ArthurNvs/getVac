//
//  HealthCenterDetailsView.swift
//  GetVac
//
//  Created by Arthur Neves on 11/12/21.
//

import SwiftUI

struct HealthCenterDosesView: View {
  var healthCenter: HealthCenter
  
  var body: some View {
    GroupBox() {
      DisclosureGroup(
        content: {
          Divider().padding(.vertical, 2)
          HStack {
            Group {
              Text("1ª Dose")
            }
            .font(Font.system(.body).bold())
            
            Spacer(minLength: 25)
            
            Text("\(healthCenter.d1[0]), \(healthCenter.d1[1])")
              .multilineTextAlignment(.trailing)
          }
          Divider().padding(.vertical, 2)
          HStack {
            Group {
              Text("2ª Dose")
            }
            .font(Font.system(.body).bold())
            
            Spacer(minLength: 25)
            Text("cinco meses após a segunda dose")
              .multilineTextAlignment(.trailing)
          }
          Divider().padding(.vertical, 2)
          HStack {
            Group {
              Text("Dose de Reforço")
            }
            .font(Font.system(.body).bold())
            
            Spacer(minLength: 25)
            Text("28 dias após a segunda dose")
              .multilineTextAlignment(.trailing)
          }
          Divider().padding(.vertical, 2)
          HStack {
            Group {
              Text("Adicional")
            }
            .font(Font.system(.body).bold())
            
            Spacer(minLength: 25)
            Text("\(healthCenter.additional)")
              .multilineTextAlignment(.trailing)
          }
        },
        label: {
          HStack(spacing: 20) {
            Image(systemName: "info.circle")
            Text("DOSES DISPONÍVEIS")
          }
        })
    }
  }
}

struct HealthCenterDetailsView_Previews: PreviewProvider {
  static var previews: some View {
    HealthCenterDosesView(healthCenter: ModelData().healthCenters[0])
  }
}
