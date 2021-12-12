//
//  GetVacApp.swift
//  GetVac
//
//  Created by Arthur Neves on 11/12/21.
//

import SwiftUI

@main
struct GetVacApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(ViewStatus())
    }
  }
}
