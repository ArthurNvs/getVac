//
//  CurrentTime.swift
//  GetVac
//
//  Created by Arthur Neves on 11/12/21.
//

import Foundation

func getDate() -> String{
  let time = Date()
  let timeFormatter = DateFormatter()
  timeFormatter.dateFormat = "dd/MM/yy"
  let stringDate = timeFormatter.string(from: time)
  return stringDate
}
