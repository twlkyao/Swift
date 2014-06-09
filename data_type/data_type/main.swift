//
//  main.swift
//  data_type
//
//  Created by Jack on 6/8/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

import Foundation

// Int、Int8、Int16、Int32、Int64
// Int = Int64 on 64-bit machine.
// Int = Int32 on 32-bit machine.
let minIntValue = Int.min
let maxIntValue = Int.max

let minInt8Value = Int8.min
let maxInt8Value = Int8.max

println("minIntValue=\(minIntValue), maxIntValue=\(maxIntValue)")
println("minInt8Value=\(minInt8Value), maxInt8Value=\(maxInt8Value)")

// Float Double
// Double is default.
let value1:Double = 123.4
let value2:Float = 33.2

let value3 = 123
let value4:Int8 = 127

//
let decimalInt = 20
let binaryInt = 0b1100 // 12
let octalInt = 0o21 // 17
let hexInt = 0x11 // 17

println(binaryInt)
println(octalInt)
println(hexInt)

// readablity
let value5 = 12_000_000
let value6 = 1_000_000.000_001

println("value5=\(value5), value6=\(value6)")

// bool
let boolValue = true
if boolValue {
    println(true)
}











