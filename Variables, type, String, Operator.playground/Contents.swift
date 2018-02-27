//: Playground - noun: a place where people can play

import UIKit

// MARK:: Difference between let & var
let constValue = 10
var value = 10

value = 5
print(value)


// MARK:: Tuple
var someTuple = (top: 10, bottom: 12)

someTuple = (top: 4, bottom: 10)
someTuple = (5,9) // Không cần phải tên

var top = someTuple.top
var bottom = someTuple.bottom

var t = someTuple.0
var b = someTuple.1

someTuple.top = 99
someTuple.bottom = 100

// Empty tuple
var person = (firstName: "Tran", lastName: "Thiet")
var (firstName, lastName) = person
var (onluFirstName, _) = person
var (_, onlyLastName) = person

// Multiple Assignment
// Khởi tạo được nhiều biến trên 1 dòng:
var aa = 1
var bb = 2
var cc = 3

var (x, y, z) = (1, 2, 3)
// Hoán đổi trên 1 dòng
(aa, bb) = (bb, aa)

// MARK:: Optional

var message1 = "i'm learing Swift"
// message = nil ở đây sẽ bị báo lỗi do biến trên được khai báo là non-optional
var message2: String? // Ở đây complite-time sẽ không báo lỗi
// Unswapping optional
var monney: Int? = 5
if monney != nil { // kiểm tra xem biến monney có giá trị hay không
    print(monney!) // sau đó gắn ! để unswapping optional
}
// Optional binding
var monney2: Int? = 5
if let mn = monney2 { // Thay vì kiểm tra biến money thì gán giá trị của biến monney cho biến mn
    print(mn)
}
//Optional chaining
struct Vehical{
    var duongBo: DuongBo?
}
struct DuongBo {
    var car = "Car"
}
let vhc = Vehical()
if let nameCar = vhc.duongBo?.car {
    print(nameCar)
} else {
    print("error")
}



