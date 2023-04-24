//: [Previous](@previous)

import Foundation
import UIKit

//Closures - Замыкания
var operation: (Double, Double)-> Double

func plus (a1: Double, a2: Double) -> Double{
    return a1 + a2
}

func minus (a1: Double, a2: Double) -> Double{
    return a1 - a2
}

func division (a1: Double, a2: Double) -> Double{
    return a1 / a2
}

func multiply (a1: Double, a2: Double) -> Double{
    return a1 * a2
}

operation = minus

let result : Double = operation(2, 5)
print(result)


let shops: [String: Double] = [
    "Shop1": 21000,
    "Shop2": 25000,
    "Shop3": 30000,
    "Shop4": 35000,
    "Shop5": 40000,
    "Shop6": 45000,
]

func filterShops (shops: [String: Double], filter: (Double) -> Bool) -> [String: Double]{
    
    var filteredShops  = [String: Double]()
    
    for (key, value) in shops {
        if(filter(value)){
            filteredShops[key] = value
        }
    }
    
    return filteredShops
}

func lowProfit (p: Double) -> Bool{
    if p <= 30000 {
        return true
    }
    
    return false
}

func highProfit (p: Double) -> Bool{
    if p > 30000 {
        return true
    }
    
    return false
}

let shopsLowProfit = filterShops(shops: shops, filter: lowProfit)

let shopsHighProfit = filterShops(shops: shops, filter: highProfit)

let shopsHighProfitWithClosure = filterShops(shops: shops, filter: {(p: Double) -> Bool in
    return p > 30000
})

let shopsLowProfitWithClosure = filterShops(shops: shops) {
     $0 < 30000
}

print(shopsLowProfit)
print(shopsHighProfit)
print(shopsHighProfitWithClosure)
print(shopsLowProfitWithClosure)

func requestData (success: (_ result: Int) -> (), error: (_ text: String) -> ()){
    
    
    let response = false
    
    if response {
        success(10)
    }else{
        error("Errror!")
    }
}

requestData (success: {(countPeaople) in
    
    print(countPeaople)
    
}) {(message) in
    print(message)
    
}


