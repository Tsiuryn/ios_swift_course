//: [Previous](@previous)

import Foundation

let x = 10
let y = 20

if x > y {
    print("x > y")
} else if x == y{
    print("x ==  y")
}else {
    print("x < y")
}

let array: [Int] = []

if array.isEmpty {
    print("Array is empty")
}

func calc (x: Float?, y: Float){
    guard let xIn = x else {
        print("x == nill")
        return
        
    }
    guard xIn != 0 else {return}
    
    print(y / xIn)
}

calc(x: 2, y: 12)

let grade = 11

switch grade {
case 10, 9: print("Grate")
case 8, 7: print("Cool")
case 6, 5: print("Good")
case 4, 3, 2, 1: print("Bad!!!")
default:
    print("Don't know this grade")
}

let life = 7

switch life {
case 80...100 : print("Green")
case 50...79 : print("Yellow")
case 20...49 : print("Brown")
case 0...19 : print("Red")
default:
    print("Unknown value!")
}
