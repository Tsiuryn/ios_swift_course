//: [Previous](@previous)

import Foundation
import UIKit

//Protocols - Протоколы

protocol Movable {
    var speed: Int {get}
    func move()
}

class Human: Movable {
    var firstName: String
    var speed: Int = 3
    
    func move(){
        print("Human goes with speed \(self.speed)")
    }
    
    init(firstName: String) {
        self.firstName = firstName
    }
}

struct Car: Movable {
    var mark: String
    var speed: Int = 180
    
    func move(){
        print("Car goes with speed \(self.speed)")
    }
}

struct Cat: Movable {
    var name: String
    
    var speed: Int = 20
    
    func move(){
        print("Cat goes with speed \(self.speed)")
    }
}

let human = Human(firstName: "Alex")
let car = Car(mark: "Toyota")
let cat = Cat(name: "Rygik")

let objects: [Movable] = [human, car, cat]

for object in objects {
    object.move()
}
