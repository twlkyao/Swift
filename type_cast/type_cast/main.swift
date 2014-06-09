//
//  main.swift
//  type_cast
//
//  Created by Jack on 6/8/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

import Foundation

var strValue:String = "12345"

var intValue1 = strValue.toInt() // 转换为int
println(intValue1)

var intValue2:Int? = strValue.toInt() // 添加类型后，必须声明为可选变量
println(intValue2)

var strValue1:String = "abc12"
intValue1 = strValue1.toInt()
println(intValue1)

intValue1 = 1223
var strValue2:String = toString(intValue1) // int转换为字符串
var strValue3:String = toString(true)

println("strValue2=\(strValue2), strValue3=\(strValue3)")

























