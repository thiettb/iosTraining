//: Playground - noun: a place where people can play

import UIKit
// Enum: có Init, có extended, có protocol
// Enumeration Syntax
enum CompassPoint {
    case north
    case south
    case east
    case west
    // Các giá trị trong này sẽ tự ngầm định là 0,1,2,3
}
enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}
var directionToHead = CompassPoint.west
directionToHead = .east

// Matching Enumeration Values with a Switch Statement
directionToHead = .south
switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}

let somePlanet = Planet.earth
switch somePlanet {
case .earth:
    print("Mostly harmless")
default:
    print("Not a safe place for humans")
}

// Associated Values
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}

// Raw Values
enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

// Implicitly Assigned Raw Values
enum Planet2: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
enum CompassPoint2: String {
    case north, south, east, west
}

let earthsOrder = Planet2.earth.rawValue
// earthsOrder is 3

let sunsetDirection = CompassPoint2.west.rawValue
// sunsetDirection is "west"

// Initializing from a Raw Value
let possiblePlanet = Planet2(rawValue: 7)

let positionToFind = 11
if let somePlanet = Planet2(rawValue: positionToFind) {
    switch somePlanet {
    case .earth:
        print("Mostly harmless")
    default:
        print("Not a safe place for humans")
    }
} else {
    print("There isn't a planet at position \(positionToFind)")
}

//Recursive Enumerations
enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}
let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))
func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}
print(evaluate(product))

// Nesting values:
enum Character1 {
    enum Weapon {
        case Bow
        case Sword
        case Lance
        case Dagger
    }
    enum Helmet {
        case Wooden
        case Iron
        case Diamond
    }
    case Thief
    case Warrior
    case Knight
}
let character = Character1.Thief
let weapon = Character1.Weapon.Bow
let helmet = Character1.Helmet.Iron

// Containing Enums:
// Để enum bên trong struct hoặc class

struct Character2 {
    enum CharacterType {
        case Thief
        case Warrior
        case Knight
    }
    enum Weapon {
        case Bow
        case Sword
        case Lance
        case Dagger
    }
    let type: CharacterType
    let weapon: Weapon
}

let warrior = Character2(type: .Warrior, weapon: .Sword)

// Methods:
enum Device5: String {
    case iphone
    case ipad
    case tv
    case watch
    
    func getOS() -> String {
        switch self {
        case .ipad, .iphone:
            return "iOS"
        case .watch:
            return "WatchOS"
        case .tv:
            return "tvOS"
        }
    }
}

// Properties:
// Không thể thêm Store Properties cho enum.Nhưng vẫn tạo được computed properties
enum Device: String {
    case iphone
    case ipad
    case tv
    case watch
    
    var description: String {
        switch self {
        case .ipad, .iphone:
            return "iOS"
        case .watch:
            return "WatchOS"
        case .tv:
            return "tvOS"
        }
    }
}

// Static methods
enum Device2: String {
    case iphone
    case ipad
    case tv
    case watch
    
    static func biggestDevice() -> Device2 {
        return Device2.tv
    }
}
print(Device2.biggestDevice())

// Mutating Methods
// Các methods có thể viết dưới dạng mutating và cho phép bạn thay đổi case của chính self.
enum DeviceMode {
    case metting
    case outdoor
    case silent
    case normal
    
    mutating func setSilent(){
        self = .silent
    }
}

var deviceMode = DeviceMode.metting
deviceMode.setSilent()

// Protocols
// Swift cho phép bạn sử dụng Protocol và Protocol Extension với Enum:
protocol CustomStringConvertible{
    var description: String {get}
}
enum DeviceMeeting: String, CustomStringConvertible {
    case metting
    case outdoor
    case silent
    case normal
    
    var description: String{
        return self.rawValue
    }
    
}

//Extensions
enum DeviceCustom: String {
    case metting
    case outdoor
    case silent
    case normal
}

extension DeviceCustom {
    var volume: Int {
        switch self {
        case .metting:
            return 10
        case .normal
            return 5
        case .outdoor
            return 15
        case .silent
            return 20
    }
}

// Use Enum for Error handling
// Sử dụng Enum để định nghĩa tập hợp các lỗi có thể gặp phải.
enum DecodeError: Error {
    case typeMismatch(expected: String, actual: String)
    case misssingKey(String)
    case custom(String)
}
// Dùng để định nghĩa HTTP status error
enum HttpError: String {
    case Code400 = "Bad Request"
    case Code401 = "Unaithorized"
    case Code402 = "Payment Required"
    case Code403 = "Forbidden"
    case Code404 = "Not Found"

}




