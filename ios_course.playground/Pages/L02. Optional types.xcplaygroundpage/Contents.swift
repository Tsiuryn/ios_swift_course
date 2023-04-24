import UIKit

// Опциональные типы

var wallet: Float?
print(wallet)

wallet = 50
print(wallet!) // Force-unwrap

wallet = nil
if let myWallet = wallet { // Optional binding
    print(myWallet)
}else{
    print("Your wallet is nil")
}


var x: Int? = 4
var y: Int = x ?? 10

print(y)

