//: Playground - noun: a place where people can play

import UIKit

// Defining a Base Class
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
    }
}

let someVehicle = Vehicle()
print("Vehicle: \(someVehicle.description)")

// Subclassing

class Bicycle: Vehicle { // Class Bicycle là 1 subclass của Vehicle
    var hasBasket = false
}
let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0 // có thể sửa đổi giá trị cho property của nó
print("Bicycle: \(bicycle.description)")

// Subclasses can themselves be subclassed.
class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}
let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print("Tandem: \(tandem.description)")

// Overriding
// Accessing Superclass Methods, Properties, and Subscripts
// Methods  super.somemethod()
// Properties super.someProperty()
// Subscripts super[someIndex]

// Overriding Methods
class Train: Vehicle{
    override func makeNoise() {  // ở đây ta ghi đè lên phương thức makeNoise()
        print("choo choo")
    }
}
let train = Train()
train.makeNoise()

// Overriding Properties
// Overriding Property Getters and Setters

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + "in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car: \(car.description)")

// Overriding Property Observers
class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}
let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)")

// Preventing Overrides (ngăn chặn ghi đè)
// final var, final func, final class, final func và final subscript











