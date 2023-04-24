//: [Previous](@previous)

import Foundation

// Turples - кортежи

let human = (name: "Nic",age: 30, height: 1.86)

print(human.0)
print(human.age)


func getHuman() -> (name: String, age: Int, height: Double){
    let human = (name: "Alex",age: 30, height: 1.86)
    return human
}

print(getHuman().name)
