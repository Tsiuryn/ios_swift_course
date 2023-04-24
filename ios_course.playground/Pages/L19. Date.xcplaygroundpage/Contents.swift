//: [Previous](@previous)

import Foundation
import UIKit


let calendar = Calendar.current
var dateComponents = DateComponents()
dateComponents.year = 2017
dateComponents.month = 3
dateComponents.day = 1

let date = calendar.date(from: dateComponents)

let dateNow = Date()
let dateComponentsNow = calendar.dateComponents([.year, .month, .day], from: dateNow)

print(date)
print(dateNow)

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "EEEE"
let weekDay = dateFormatter.string(from: dateNow)

print(weekDay)

let dateNow_ = calendar.date(from: dateComponentsNow)

let timeInterval = dateNow.timeIntervalSince(dateNow_!) / 60 / 60

print("Interval since \(timeInterval)")


var dc1 = DateComponents()
dc1.year = 2016
dc1.month = 2
dc1.day = 1
let date1 = calendar.date(from: dc1)

var dc2 = DateComponents()
dc2.year = 2016
dc2.month = 3
dc2.day = 1
let date2 = calendar.date(from: dc2)

let daysInFeb = (date2?.timeIntervalSince(date1!))! / 60 / 60 / 24

print("Day in Feb \(daysInFeb)")

