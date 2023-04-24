//: [Previous](@previous)

import Foundation
import UIKit

enum OwnColor : String{
    case red
    case yellow
    case green
}

//Classes - Классы
class Transport {
    let year: Int
    let color: OwnColor = .yellow
    let numberOfSeats: Int = 1
    
    init(year: Int){
        self.year = year
    }
    
    func move(){
        print("Move")
    }
    
}

let transport = Transport(year: 2003)
print(transport.color.rawValue)


class Car : Transport{
    let vin : String
    
    init(vin: String, year: Int){
        self.vin = vin
        super.init(year: year)
    }
    
    override func move() {
        print("Car move")
    }
}

let myCar = Car(vin: "123 332", year: 2016)
print(myCar.year)
print(transport.move())
print(myCar.move())
