//: Playground - noun: a place where people can play

import UIKit

// Class & Struct

// Definition Syntax
struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

// Accessing Properties
print("The width of someResolution is \(someResolution.width)")

// Structures and Enumerations Are Value Types
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048
print("hd is still \(hd.width) pixels wide") // ở đây mặc dù cinema đã thay đổi width là 2048 tuy nhiên không ảnh hường gì đến hd do struct là value type.Nó sẽ coppy giá trị và đẩy vào vùng nhớ của cinema.width chứ không phải truyền địa chỉ vùng nhớ.

enum CompassPoint {
    case north, south, east, west
}
var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection
currentDirection = .east
if rememberedDirection == .west {
    print("The remembered direction is still .west")
}
// Tương tự ở đây Enum cũng là value type nên sẽ sẽ copy giá trị và đẩy vào vùng nhớ của currentDirection

// Classes Are Reference Types
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
print("The frameRate property of tenEighty is now \(tenEighty.frameRate)")
// do ở đây alsotenEighty là reference type nên nó sẽ truyền địa chỉ ô nhớ chứ k phải copy giá trị.

// Identity Operators
// dùng để xác định 2 thằng có cùng instance hay không?

if tenEighty === alsoTenEighty {
    print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
}
