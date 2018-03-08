//: Playground - noun: a place where people can play

import UIKit

// Thuật toán nổi bọt. Bubble Sort
// Ý tưởng: So sánh từ đầu đi.Nếu phần tử sau nhỏ hơn => Đổi chỗ => Mục đích đưa ra được phần
// tử lớn nhất.Sau khi vòng lặp đầu tiên => tìm ra đc phần tử lớn nhất => sau đó tiếp tục khi nào xong.

//var bubbleArray = [4,1,9,2,5]
//let n = bubbleArray.count
//for i in 0..<(n - 1) {
//    print("i = \(i)")
//    for j in 0..<(n-i-1) {
//        print("j = \(j)")
//        if bubbleArray[j] > bubbleArray[j+1] {
//            bubbleArray.swapAt(j, j+1)
//        }
//    }
//}
//print(bubbleArray)

// Thuật toán lựa chọn. Selection Sort
// Ý tưởng: Tìm ra phần tử nhỏ nhất và đưa lên đầu.Sau đó bỏ qua phần tử đầu => tiếp tục cho đến
// khi xong

//var selectionSort = [4,1,9,2,5]
//let count_ = selectionSort.count
//var min_i: Int!
//
//for i in 0..<(count_ - 1) {
//    min_i = i
//    print(min_i)
//    for j in (i+1)..<(count_) {
//        if selectionSort[min_i] > selectionSort[j] {
//            selectionSort.swapAt(min_i, j)
//            min_i = j
//        }
//    }
//}
//print(selectionSort)

//Thuật toán Insertion Sort :: Thuật toán sắp xếp chèn
//Ý tưởng: Giống như khi sếp bài.Sẽ cầm 1 con bài từ vị trí bắt đầu là thứ 2 lên và sẽ sắp xếp.

//var array = [4,1,9,2,5]
//
//let count = array.count
//
//for i in 1..<count {
//    var key = array[i]
//    var j = i - 1
//    while (j >= 0) && (array[j] > key){
//        array[j+1] = array[j]
//        j = j - 1
//    }
//    array[j+1] = key
//}
//print(array)

// Thuật toán Merge Sort:: Sắp xếp trộn
//
