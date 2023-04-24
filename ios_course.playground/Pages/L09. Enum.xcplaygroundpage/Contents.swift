//: [Previous](@previous)

import Foundation
import UIKit

enum DeviceType {
    case laptop (mark: LaptopMark)
    case desktop
    case tablet
    case smartPhone
    case smartWatch
    
    enum LaptopMark {
        case acer
        case apple
        case hp
        case asus
    }
}

let device : DeviceType = .laptop(mark: .apple)

switch device {
case .laptop (let mark) where mark == .apple: print("Laptop Apple")
case .laptop : print("Laptop")
case .desktop : print("Desktop")
case .tablet : print("Tablet")
default: print("Unknown")
}

enum HomeType : String {
    case house  = "House"
    case flat   = "Flat"
    case box    = "Box"
}

let home: HomeType = .house
print(home.rawValue)
