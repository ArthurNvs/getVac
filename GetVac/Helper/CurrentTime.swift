//
//  CurrentTime.swift
//  GetVac
//
//  Created by Arthur Neves on 11/12/21.
//

import Foundation
import SwiftUI

func getDate() -> String{
  let time = Date()
  let timeFormatter = DateFormatter()
  timeFormatter.dateFormat = "dd/MM/yy"
  let stringDate = timeFormatter.string(from: time)
  return stringDate
}

func getHour() -> String {
  let time = Date()
  let timeFormatter = DateFormatter()
  timeFormatter.dateFormat = "HH"
  let stringDate = timeFormatter.string(from: time)
  return stringDate
}

func getGreeting() -> String {
  if Int(getHour())! < 19 && Int(getHour())! > 11 {
    return "Olá, boa tarde!"
  }
  
  if Int(getHour())! < 12 && Int(getHour())! > 00 {
    return "Olá, bom dia!"
  }
  
  return "Olá, boa noite!"
}

func getHourImage() -> String {
  print(getHour())
  if Int(getHour())! < 19 && Int(getHour())! > 11 {
    return "sun.max.fill"
  }
  
  if Int(getHour())! < 12 && Int(getHour())! > 00 {
    return "sunrise.fill"
  }
  
  return "moon.stars.fill"
}
