//
//  InfoMainView.swift
//  GetVac
//
//  Created by Arthur Neves on 11/12/21.
//

import SwiftUI

extension Image {
  func imageModifier() -> some View {
    self
      .resizable()
      .scaledToFit()
  }
  
  func iconModifier() -> some View {
    self
      .imageModifier()
      .frame(maxWidth: 128)
      .foregroundColor(.black)
      .opacity(0.5)
  }
}

struct InfoMainView: View {
  private let imageURL: String = "https://www.saude.df.gov.br/wp-conteudo/uploads/2021/02/PONTOS_VAC_FDS.png"
  
  var body: some View {
    Spacer()
    
    Text("Locais de vacinação")
      .font(.title3)
      .fontWeight(.bold)
    
    AsyncImage(url: URL(string: imageURL), transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))) { phase in
      switch phase {
        case .success(let image):
          image
            .imageModifier()
            .transition(.move(edge: .bottom))
          //.transition(.scale)
        case .failure(_):
          Image(systemName: "ant.circle.fill").iconModifier()
        case .empty:
          Image(systemName: "photo.circle.fill").iconModifier()
        @unknown default:
          ProgressView()
      }
    } //: AsyncImage
    .padding(40)
    .foregroundColor(Color.pink)
    
    Spacer()
    
    AdditionalInfo()
    
    Spacer()
    
    Text("Dados disponibilizados pelo GDF")
      .font(.footnote)
      .fontWeight(.bold)
      .foregroundColor(.gray)
  }
}

struct InfoMainView_Previews: PreviewProvider {
  static var previews: some View {
    InfoMainView()
  }
}
