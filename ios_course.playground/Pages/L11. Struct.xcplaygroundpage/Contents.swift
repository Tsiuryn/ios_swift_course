//: [Previous](@previous)

import Foundation
import UIKit

struct Car {
    let numberOfSeats: Int
    let year: Int
    private var mileage: Int = 100
    private var isCrash: Bool
    
    
    init(seats: Int, year: Int, isCrash: Bool){
        self.numberOfSeats = seats
        self.year = year
        self.isCrash = isCrash
    }
    
    mutating func crash(){
        self.isCrash = !isCrash
    }
    
    mutating func changeMileage (mileage: Int){
        self.mileage = mileage
    }
    
    func getMileage() -> Int {
        return self.mileage
    }
}

var car = Car(seats: 20, year: 2016, isCrash: true)
car.changeMileage(mileage: 300)

var car2 = car
car.changeMileage(mileage: 2000)
car.changeMileage(mileage: 3000)
print(car.getMileage())
print(car2.getMileage())
