//: [Previous](@previous)

import Foundation

//Набор - Set

//var numbers = Set<Int>()
//var numbers: Set = [1,2,3,4,5]
//print(numbers)
//
//if numbers.insert(3).inserted {
//    print("New")
//}else {
//    print("Old")
//}
//
//print(numbers.remove(33)) // return nil or Optional


let oddDigits: Set = [1,3,5,7, 8]
let evenDigits: Set = [2,4,6,8]

let testSet: Set = [1,5,8]

let all = oddDigits.union(evenDigits).sorted() //sorted return Array
print(all)

let inter = oddDigits.intersection(evenDigits)
print(inter)

let subtr = oddDigits.subtracting(evenDigits).sorted()
print(subtr)

let symetricD = oddDigits.symmetricDifference(evenDigits).sorted()
print(symetricD)


print(testSet.isSubset(of: oddDigits))
print(testSet.isSubset(of: oddDigits))
print(testSet.isDisjoint(with: oddDigits))
