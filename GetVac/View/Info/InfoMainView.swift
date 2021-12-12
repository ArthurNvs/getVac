//
//  InfoMainView.swift
//  GetVac
//
//  Created by Arthur Neves on 11/12/21.
//

import SwiftUI

struct InfoMainView: View {
  let keyWindow = UIApplication.shared.connectedScenes
    .filter({$0.activationState == .foregroundActive})
    .compactMap({$0 as? UIWindowScene})
    .first?.windows
    .filter({$0.isKeyWindow}).first
  
  var body: some View {
    ZStack {
      Color.blue.ignoresSafeArea()
      
      VStack(spacing: 0) {
        NavigationBarView()
          .padding(.top, 37)
          .background(Color.white.frame(height: 90))
          .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
        
        VStack {
//          Text("Veja onde se vacinar!")
//            .font(.callout)
//            .fontWeight(.bold)
//            .foregroundColor(.white)
//            .multilineTextAlignment(.center)
//            .padding(.bottom)
//            .font(.title)
//            .foregroundColor(.white)
          
          ScrollView(.horizontal, showsIndicators: false) {
            HStack {
              AsyncImageView(imageURL: "https://www.saude.df.gov.br/wp-conteudo/uploads/2021/02/PONTOS_VAC_FDS.png")
              AsyncImageView(imageURL: "https://www.saude.df.gov.br/wp-conteudo/uploads/2021/02/PONTOS_VAC_FDS.png")
            }
          }
          
          Spacer()
          
          AdditionalInfo()
          
          Spacer()
          
          Text("Dados disponibilizados pela Secretaria de Saúde")
            .font(.footnote)
            .fontWeight(.bold)
            .foregroundColor(.white)
        } //: ScrollView
        .padding()
      } //: VStack
    } //: ZStack
    .ignoresSafeArea(.all, edges: .top)
  }
}

struct InfoMainView_Previews: PreviewProvider {
  static var previews: some View {
    InfoMainView()
  }
}
