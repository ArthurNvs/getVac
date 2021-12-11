//
//  HeadingView.swift
//  GetVac
//
//  Created by Arthur Neves on 11/12/21.
//

import SwiftUI

struct HeadingView: View {
  let headingImage: String
  let headingText: String
  
  var body: some View {
    HStack {
      Image(systemName: headingImage)
        .foregroundColor(.accentColor)
        .imageScale(.large)
      
      Text(headingText)
        .font(.title3)
        .fontWeight(.bold)
    }
    .padding(.vertical)
  }
}

struct HeadingView_Previews: PreviewProvider {
  static var previews: some View {
    HeadingView(headingImage: "info.circle", headingText: "Informações")
    .previewLayout(.sizeThatFits)
    .padding()
}
}
