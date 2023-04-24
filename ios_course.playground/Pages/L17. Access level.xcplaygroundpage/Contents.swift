//: [Previous](@previous)

import Foundation

// Access level

//open
//public - can't extend in another module
//internal - (by default)
//fileprivate - see in file
//private

class Car {
    internal var mileage = 0
    fileprivate var mark = "Toyota"
    private var name = "My car"
}

let car = Car()
car.mileage = 1000

print(car.mileage)
