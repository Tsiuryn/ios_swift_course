//: [Previous](@previous)

import Foundation

//Словарь - Dictionary

//var phoneBook: [String: String] = [ : ]
//var phoneBook = [String:String]()
var phoneBook = ["232323":"Hello" ,
                 "23221" : "dfddfdf",
                 "232212" : "dfddfdf",
                 "232213" : "dfddfdf",
                 "232214" : "dfddfdf",
]

print(phoneBook)

for key in phoneBook.keys{
    print(key)
}

for (key, value) in phoneBook{
    print("key - \(key), value - \(value)")
}




