//: [Previous](@previous)

import Foundation

// Array

var names: [String] = [] // empty array
var names1 = [String]()

var names2 = ["Nik", "Peter", "David"]

var wallet = [Int](repeating: 50, count: 4)
print(wallet)


for name in names2{
    print(name)
}

for index in names2.indices{
    print(index)
}


print(names2.count)

names2.append("Fixic")

print(names2)

let ddd = wallet.map{$0 * $0}

print(ddd)

// sorted, sort, filter, first, last, dropLast

