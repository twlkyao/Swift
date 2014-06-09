//
//  main.swift
//  char
//
//  Created by Jack on 6/8/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

import Foundation

import Cocoa


// 获取字符串中的每一个字符
let strValue1 = "获取字符串中的每一个字符"
for c in strValue1
{
    print("<" + c + ">")
}
println()

// 声明字符串变量
let charValue2:Character = "a"
var charValue3:Character = "上"

// 全局函数countElements用于获取字符数目
println("strValue1中的字符个数是：\(countElements(strValue1))")

// 字符和字符串拼接
let strValue2 = "abcd"
let charValue4:Character = "e"

let strValue3 = strValue2 + charValue4
println(strValue3)

// 获取Unicode字符的编码
let strValue4 = "abcd上下左右"
for c in strValue4.unicodeScalars
{
    print(c.value)
}