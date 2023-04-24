//: [Previous](@previous)

import Foundation
import UIKit

class Human {
    var name: String
    
    func say(){
        print("\(name) tell us about ...")
    }
    
    init(name: String) {
        self.name = name
    }
}

class Student: Human {
    var university: String
    
    func study (){
        print("I study in \(university)")
    }
    
    init(university: String, name: String){
        self.university = university
        super.init(name: name)
    }
}

class Worker: Human {
    var company: String
    
    func work (){
        print("I work in \(company)")
    }
    
    init(company: String, name: String){
        self.company = company
        super.init(name: name)
    }
}

class Child: Human {
    var hero: String
    
    func play (){
        print("I play  \(hero)")
    }
    
    init(hero: String, name: String){
        self.hero = hero
        super.init(name: name)
    }
}

let student1 = Student(university: "BATU", name: "Alex")
let student2 = Student(university: "MGU", name: "Serg")

let worker1 = Worker(company: "Google", name: "Petr")
let worker2 = Worker(company: "Yandex", name: "Ivan")

let child1 = Child(hero: "Batman", name: "Victor")
let child2 = Child(hero: "Robin", name: "Mickl")

var myArray = [student1, student2, worker1, worker2, child1, child2]

for man in myArray {
    man.say()
    
    if man is Student {
        let student = man as! Student
        print(student.study())
    }
    
    if let worker = man as? Worker {
        worker.work()
        
    }
    
    switch man {
    case let child as Child : child.play()
    default: break
    }
}
