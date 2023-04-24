//: [Previous](@previous)

import Foundation

let cash: [Double] = [121212,1213,4534,5453,6646,76757,8]

//print(cash.reduce(0){(result, item) -> Double in
//    result + item
//})


print(cash.reduce(0, +))


func getIncomeTotal (cash: [Double], percent: Double)-> Double? {
    guard percent < 1 && percent >= 0 else {
        print ("Percent is not valid")
        return nil
    }
    var total = cash.reduce(0, +)
    
    total -= total * percent
    
    return total
}

print(getIncomeTotal(cash: cash, percent: 0.4))
