//
//  main.swift
//  optional_type
//
//  Created by Jack on 6/9/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

import Foundation

// 可选类型
// 1.类型有值，但是不确定
// 2.类型没有任何值

let possibleNumber = "Hello"
let convertedNumber : Int? = possibleNumber.toInt() // convertedNumber为整型，但也有可能为空(nil)
println(convertedNumber)

var test:String? = nil // nil只能用来给可选类型赋值，非可选类型不能赋值为nil

if convertedNumber {
    println("\(possibleNumber) has an integer value of \(convertedNumber!)") // 使用可选类型的时候需要使用叹号
} else {
    println("\(possibleNumber) could not converted to an Integer")
}

