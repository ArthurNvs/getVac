//
//  MapAnnotationView.swift
//  GetVac
//
//  Created by Arthur Neves on 11/12/21.
//

import SwiftUI

struct MapAnnotationView: View {
  @State private var animation: Double = 0.0
  
  var body: some View {
    ZStack {
      Circle()
        .fill(Color.accentColor)
        .frame(width: 24, height: 24, alignment: .center)
      
      Circle()
        .stroke(Color.accentColor, lineWidth: 2)
        .frame(width: 22, height: 22, alignment: .center)
        .scaleEffect(1 + CGFloat(animation))
        .opacity(1 - animation)
      
      Image(systemName: "mappin.and.ellipse")
        .resizable()
        .scaledToFit()
        .frame(width: 15, height: 15, alignment: .center)
        .clipShape(Circle())
        .foregroundColor(Color.white)
    } //: ZStack
    .onAppear {
      withAnimation(Animation.easeOut(duration: 1.2).repeatForever(autoreverses: false)) {
        animation = 1
      }
    }
  }
}

struct MapAnnotationView_Previews: PreviewProvider {
  static var previews: some View {
    MapAnnotationView()
  }
}
