//: Playground - noun: a place where people can play

import UIKit

var arr : [Int] = [1,4,7,3,2,6,2,3,5,7,2,2,13,5,12,5,1]
var temp : Int?
//冒泡排序
for i in 0..<arr.count-1{
    print(i)
    for j in 0..<arr.count-1-i{
        
        if (arr[j] > arr[j+1]){
            temp = arr[j+1]
            arr[j+1] = arr[j]
            arr[j] = temp!
        }
        
    }
    
}
arr
