//
//  main.swift
//  array_create_init
//
//  Created by Jack on 6/8/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

import Foundation

// 数组的创建
let array1 = ["abc", "efg"]
let array2 = ["hij", 4] // 数组中的元素可以类型不同
println(array2)

var array3:String[] = ["abc", "def"] // 指定数组需要中括号

// 数组的赋值操作，则两个数组指向同一内存地址
let array4:String[] = array1
array1[0] = "xyz"

println(array4)

var intArray = Int[]() // 创建一个Int类型的空数组
var fourInt = Int[](count:4, repeatedValue:2) // 创建一个包含4个2的数组

// 数组相加
var strArray1 = ["abc", "bb"]
var strArray2 = ["xxx", "yyy"]

var strArray = strArray1 + strArray2 // 相当于两个数组拼接
println(strArray)

// 数组的区间赋值
strArray1[0...1] = ["xyz", "def"] // 将第0和第1个元素赋值
println("strArray1=\(strArray1)")

strArray2[0..1] = ["xyz", "def"] // 将第0个元素赋值，然后由于右值比左值多，所以将“def”插入"xyz"后边
println("strArray2=\(strArray2)")