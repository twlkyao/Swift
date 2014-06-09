//
//  main.swift
//  string
//
//  Created by Jack on 6/8/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

import Foundation

// string
let strValue:String = "abc"
let strValue1:String = "\"Today is a good day.\""

// single byte unicode, format \xnn
let strValue2 = "\x41"
println(strValue2)

// double bytes unicode, format: \unnn
let strValue3 = "\u2600"
println(strValue3)

// four bytes unicode, format: \Unnnnnnnn
let strValue4 = "\U0001F496"
println(strValue4)

// initial string.
var emptyString1 = ""
var emptyString2 = String()

var emptyString3 = "abc"
var emptyString4 = String("abc")

if emptyString3 == emptyString4 {
    println("equal")
}

// join string.
let str1 = "常记溪亭日暮"
let str2 = "沉醉不知归路\n"

var str = "如梦令\n" + str1 + str2

var str3 = "兴尽晚回舟，误入藕花深处\n"

str3 += "争渡，争渡\n惊起一滩鸥鹭"

str += str3

println(str)

// case 
let lowercaseString = "abcde"
let uppercaseString = lowercaseString.uppercaseString
println(uppercaseString)
println(uppercaseString.lowercaseString)


























