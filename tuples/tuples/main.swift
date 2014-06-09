//
//  main.swift
//  tuples
//
//  Created by Jack on 6/8/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

import Foundation

// 元组常量、变量的定义
// 从元组数据中提取每个元素的值
// 为元组数据中的每个元素命名

let product1 = (20, "iPhone6", 5888) // 元组常量
let productName = "iPhone7" // 常量
let product2 = (30, "\(productName)", 18888)

println(product1)
println(product2)

let (id1, name1, price1) = product2
println("id1=\(id1), name1=\(name1), price1=\(price1)")

let(_, name2, _) = product1 // 可以使用下划线来表示不需要的变量
println("name2=\(name2)")

// 为元组中每个元素命名，然后使用点操作来获取相应的值
let product3 = (30, name:"iPhone8", price:5888)

println(product3.name)

































