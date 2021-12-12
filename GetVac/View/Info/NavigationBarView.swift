//
//  NavigationBarView.swift
//  GetVac
//
//  Created by Arthur Neves on 11/12/21.
//

import SwiftUI

struct NavigationBarView: View {
  @EnvironmentObject var viewStatus: ViewStatus
  @State private var isAnimated = false
  
  var body: some View {
    HStack {
      Image(systemName: "cross.fill")
        .font(.largeTitle)
        .foregroundColor(.blue)
      Text("GetVac")
        .font(.largeTitle)
        .fontWeight(.semibold)
        //.shadow(color: Color.gray, radius: 3, x: 1, y: 1)
        .foregroundColor(.accentColor)
        .offset(x: 0, y: isAnimated ? 0 : -25)
      
      Spacer()
      
      Image(systemName: "list.triangle")
        .font(.largeTitle)
        .foregroundColor(.blue)
        .padding()
        .onTapGesture {
          withAnimation(.easeOut) {
            viewStatus.showList = true
          }
        }
      
    } //: HStack
    .onAppear(perform: {
      withAnimation(.easeOut(duration: 0.5)) {
        isAnimated.toggle()
      }
    })
    .padding(.leading)
  }
}

struct NavigationBarView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationBarView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
