//: Playground - noun: a place where people can play

import UIKit
import Foundation



//
//protocol AlphaProtocol {
//    var message: String? { get set }
//}
//
//class A: AlphaProtocol {
//    var message: String?
//}
//
//class B {
//    var alpha: AlphaProtocol! {
//        didSet{
//            print("asdasdsa")
//        }
//    }
//}
//
//let b = B()
//b.alpha = A()
//print(b.alpha.message)
//b.alpha.message = "new message"
//print(b.alpha.message)
//
//class C: B {
//
//}
//
//func onswap<T>( a: inout T, b: inout T) {
//    let tmp = a
//    a = b
//    b = tmp
//}
//var someint = 1
//var anotherInt = 12

//let t = onswap(a: &someint, b: &anotherInt)


// convenience:
//class SuperA {
//    var a: Int
//    init (a: Int) {
//        self.a = a
//    }
//    convenience init () {
//        self.init(a: 12)
//    }
//}
//
//class subclass: SuperA {
//    var b: String
//    init(a: Int, b: String) {
//        self.b = b
//        super.init(a: a)
//    }
//    override convenience init(a: Int) {
//        self.init(a: a, b: "aaa")
//    }
//}
//
//var testConvenience = subclass(a: 12, b: "dd")// ở đây muốn biến testConvenience là đc khởi tạo theo phương thức của lớp cha thì sẽ không dc.
//// muốn khởi tạo theo phương thức của lớp cha thì thêm convennience ở class cha
//var ts = subclass(a: 1, b: "aaa")
//print(ts.b)


// didSet
//class StepCounter {
//    var totalSteps: Int = 0 {
//        willSet(newTotalSteps) {
//            print("About to set totalSteps to \(newTotalSteps)")
//        }
//        didSet {
//            if totalSteps > oldValue  {
//                print("Added \(totalSteps - oldValue) steps")
//            }
//        }
//    }
//}
//let stepCounter = StepCounter()
//stepCounter.totalSteps = 200
//// About to set totalSteps to 200
//// Added 200 steps
//stepCounter.totalSteps = 360
//// About to set totalSteps to 360
//// Added 160 steps
//stepCounter.totalSteps = 896
//// About to set totalSteps to 896
//// Added 536 steps

// willSet
class Person {
    var name: String? {
        willSet(newValue) {
            print("i don't like \(newValue!)")
        }
    }
}
let aperson = Person()
aperson.name = "tomy"

//








