//
//  ModelData.swift
//  GetVac
//
//  Created by Arthur Neves on 11/12/21.
//

import Foundation

final class ModelData: ObservableObject {
  @Published var healthCenters: [HealthCenterModel] = load("healthCenterData.json")

}

func load<T: Decodable>(_ filename: String) -> T {
  let data: Data
  
  guard let url = Bundle.main.url(forResource: filename, withExtension: nil)
  else {
    fatalError("Failed to find \(filename) in main bundle.")
  }
  
  do {
    data = try Data(contentsOf: url)
  } catch {
    fatalError("Failed to load \(filename) from main bundle:\n\(error)")
  }
  
  do {
    return try JSONDecoder().decode(T.self, from: data)
  } catch {
    fatalError("Failed to parse \(filename) as \(T.self):\n\(error)")
  }
}
