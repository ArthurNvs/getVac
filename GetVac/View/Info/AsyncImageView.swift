//
//  AsyncImage.swift
//  GetVac
//
//  Created by Arthur Neves on 11/12/21.
//

import SwiftUI

extension Image {
  func imageModifier() -> some View {
    self
      .resizable()
      .scaledToFill()
      
  }
  
  func iconModifier() -> some View {
    self
      .imageModifier()
      .frame(maxWidth: 128)
      .foregroundColor(.black)
      .opacity(0.5)
  }
}

struct AsyncImageView: View {
  let imageURL: String
  
  @State var currentScale: CGFloat = 0
  @State var finalScale: CGFloat = 1
  
  var body: some View {
    VStack {
      AsyncImage(url: URL(string: imageURL), transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))) { phase in
        switch phase {
        case .success(let image):
          image
            .imageModifier()
            .transition(.scale)
        case .failure(_):
          Image(systemName: "ant.circle.fill").iconModifier()
        case .empty:
          Image(systemName: "photo.circle.fill").iconModifier()
        @unknown default:
          ProgressView()
        }
      } //: AsyncImage
      //.cornerRadius(30, antialiased: true)
      .padding()
      .scaleEffect(finalScale + currentScale)
      .gesture(
        MagnificationGesture()
          .onChanged { newScale in
            currentScale = newScale - 1
          }
          .onEnded { scale in
            finalScale = 1
            currentScale = 0
        })
    }
  }
}

struct AsyncImage_Previews: PreviewProvider {
  static var previews: some View {
    AsyncImageView(imageURL: "https://www.saude.df.gov.br/wp-conteudo/uploads/2021/01/Vacinometro-25-3.gif")
  }
}
