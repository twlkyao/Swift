//
//  main.swift
//  operator
//
//  Created by Jack on 6/8/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

import Foundation

// 1.与C语言不同，Swift语言的取余(%)允许使用浮点数
// 2.多常量、多变量赋值
// 3.闭区间范围操作符
// 4.半开半壁范围操作符

var value = 30.3 % 3 // 余数为0.3，因为浮点数有精度问题，可能不是0.3
println(value)

let(x, y) = (3, 4) // assign to x and y at the same time.
println("x=\(x)")

for index in 1...10 // scale operator.[1, 10]
{
    println(index)
}

let names = ["abc", "def", "ghi"]
let count = names.count // 数组的个数

for i in  0..count // [0, count)
{
    println("names[\(i)]=\(names[i])")
}




























