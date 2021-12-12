//
//  InfoMainView.swift
//  GetVac
//
//  Created by Arthur Neves on 11/12/21.
//

import SwiftUI

struct InfoMainView: View {
  @EnvironmentObject var viewStatus: ViewStatus
  
  let keyWindow = UIApplication.shared.connectedScenes
    .filter({$0.activationState == .foregroundActive})
    .compactMap({$0 as? UIWindowScene})
    .first?.windows
    .filter({$0.isKeyWindow}).first
  
  var body: some View {
    ZStack {
      if viewStatus.showList == false {
        VStack(spacing: 0) {
          NavigationBarView()
            .padding(.top, 37)
            .background(Color.white.frame(height: 100))
            .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
          
          VStack {
            ScrollView(.horizontal, showsIndicators: false) {
              HStack {
                AsyncImageView(imageURL: "https://www.saude.df.gov.br/wp-conteudo/uploads/2021/02/PONTOS_VAC_FDS.png")
                AsyncImageView(imageURL: "https://www.saude.df.gov.br/wp-conteudo/uploads/2021/02/PONTOS_VAC_FDS-1-1.png")
              }
            }
            
            Spacer()
            
            AdditionalInfo()
            
            Spacer()
            
            Text("Dados disponibilizados pela Secretaria de Saúde")
              .font(.footnote)
              .fontWeight(.bold)
              .foregroundColor(.accentColor)
          } //: VStack
          .padding()
        } //: VStack
      } else {
        HealthCenterListView(healthCenters: ModelData().healthCenters)
      }
    } //: ZStack
    .ignoresSafeArea(.all, edges: .top)
  }
}

struct InfoMainView_Previews: PreviewProvider {
  static var previews: some View {
    InfoMainView()
      .environmentObject(ViewStatus())
  }
}
