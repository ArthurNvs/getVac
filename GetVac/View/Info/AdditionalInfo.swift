//
//  InfoHeader.swift
//  GetVac
//
//  Created by Arthur Neves on 11/12/21.
//

import SwiftUI

struct AdditionalInfo: View {
  
  var body: some View {
    GroupBox() {
      DisclosureGroup(
        content: {
          Divider().padding(.vertical, 2)
          HStack {
            Group {
              Text("18 anos ou +")
            }
            .font(Font.system(.body).bold())
            
            Spacer(minLength: 25)
            Text("cinco meses após a segunda dose")
              .multilineTextAlignment(.trailing)
          }
          Divider().padding(.vertical, 2)
          HStack {
            Group {
              Text("Profissional de saúde")
            }
            .font(Font.system(.body).bold())
            
            Spacer(minLength: 25)
            Text("cinco meses após a segunda dose")
              .multilineTextAlignment(.trailing)
          }
          Divider().padding(.vertical, 2)
          HStack {
            Group {
              Text("Pessoas com imunossupressão grave")
            }
            .font(Font.system(.body).bold())
            
            Spacer(minLength: 25)
            Text("28 dias após a segunda dose")
              .multilineTextAlignment(.trailing)
          }
        },
        label: {
          HStack(spacing: 20) {
            Image(systemName: "info.circle")
            Text("DOSE ADICIONAL / REFORÇO")
          }
        })
    }
  } // GroupBox
}

struct InfoHeader_Previews: PreviewProvider {
  static var previews: some View {
    AdditionalInfo()
  }
}
