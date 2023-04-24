//: [Previous](@previous)

import Foundation

struct Car {
    var mark: String
    var model: String
    var year: Int {
        willSet{
            print("Old value - \(self.year)")
            print("New value - \(newValue)")
        }
        
        didSet {
            print("Current value - \(self.year)")
        }
    }
    
    var fullName: String {
        get{
            return "\(self.mark) \(self.model) \(self.year)"
        }
        set{
            print(newValue)
            let full = newValue.components(separatedBy: " ")
            if full.count > 2 {
                self.mark = full[0]
                self.model = full[1]
                if let newYear = Int(full[2]){
                    self.year = newYear
                }
                
            }
        }
    }
    
    lazy var price: Int = getPrice()
    
    static var count: Int = 0
    
    static func getCount() -> Int{ // In class the key words should be 'class', because child can't ovveride this method
        return Car.count
    }
    
    init(mark: String, model: String, year: Int) {
        self.mark = mark
        self.model = model
        self.year = year
        Car.count += 1
    }
}

func getPrice() -> Int{
    print("Start")
    
    var a = 0
    while a < 300000 {
        a += 1
    }
    print("Finish")
    
    return 300000
}

var car = Car(mark: "Toyota", model: "RAV 4", year: 2019)
var car1 = Car(mark: "Toyota2", model: "RAV 5", year: 2020)
var car2 = Car(mark: "Toyota3", model: "RAV 6", year: 2021)
var car23 = Car(mark: "Toyota3", model: "RAV 6", year: 2021)
var car24 = Car(mark: "Toyota3", model: "RAV 6", year: 2021)
var car25 = Car(mark: "Toyota3", model: "RAV 6", year: 2021)
var car26 = Car(mark: "Toyota3", model: "RAV 6", year: 2021)
var car27 = Car(mark: "Toyota3", model: "RAV 6", year: 2021)
var car28 = Car(mark: "Toyota3", model: "RAV 6", year: 2021)
print(car.fullName)
print(Car.count)
print(Car.getCount())

//car.year = 2020
//print(car.fullName)
//car.fullName = "Toyota Corolla 2023"
//print(car.fullName)


