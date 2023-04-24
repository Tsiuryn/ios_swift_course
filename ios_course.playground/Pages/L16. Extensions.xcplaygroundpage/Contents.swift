//: [Previous](@previous)

import Foundation
// Extensions _ расширения

//String

extension String{
    mutating func clear() {   // key word mutating used in struct
        self = self.trimmingCharacters(in: .whitespaces)
        self = self.prefix(1).uppercased() + self.dropFirst()
    }
    
    var isShort: Bool{
        return self.count <= 15
    }
}


var str = "    hello world. This is success     "
str.clear()
print(str)

struct Human {
    var name: String
}

protocol Movable {
    var speed: Int{get}
    
    func move()
}

extension Human: Movable{
    var speed: Int {
        return 5
    }
    
    func move() {
        print("Top Top")
    }
}

let human = Human(name: "Alex")

print(human.speed)
print(human.move())

