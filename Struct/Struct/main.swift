//
//  main.swift
//  Struct
//
//  Created by Jack on 6/26/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

/*
 * an example to show the difference between value type and reference type.
 */

import Foundation

/*****************************************
               value type.
*****************************************/
struct Point1 {
    var x = 0, y = 0
    mutating func moveToX(x: Int, andY y:Int) { // needs to be a mutating method in order to work
        self.x = x
        self.y = y
    }
}

var p1 = Point1(x: 1, y: 2) // in order to change the properties, you have to use var, because it is a value type.
p1.x = 3 // works from outside the struct!
p1.moveToX(5, andY: 5)

println("p1.x = \(p1.x), p1.y = \(p1.y)")

let p7 = Point1(x: 1, y: 2)
//p7.moveToX(4, andY: 5) // error, since p7 is a constant, its property can't change.


struct Point2 {
    let x = 0, y = 0
}

var p2 = Point2(x: 1, y: 2)
println("p2.x=\(p2.x), p2.y=\(p2.y)")
//p2.x = 3 // can't change p2.x, since p2.x is a constant.

/*****************************************
              reference type.
*****************************************/
class Point3 {
    var x = 0
    var y = 0
    let plet: Point4
    var pvar: Point4
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
        self.plet = Point4() // plet.x = 0, plet.y = 0
        self.pvar = Point4() // pvar.x = 0, pvar.y = 0
    }

    func moveToX(x: Int, andY y: Int) { // no need to use "mutating" keyword.
        self.x = x;
        self.y = y;
    }
}

class Point4 {
    var x = 0
    var y = 0
}

let p3 = Point3(x:1, y:2) // you can use let, even though you want to change the property, because it is a reference.
p3.x = 2
p3.moveToX(5, andY: 5) // no need to use the "mutating" keyword.
println("p3.x = \(p3.x), p3.y = \(p3.y)") // x = 5, y = 5

var p4 = p3 // p3 and p4 are the same, since they are reference type.
p4.x = 3
println("p4.x = \(p4.x), p4.y = \(p4.y)") // p4.x = 3, p4.y = 5
println("p3.x = \(p3.x), p3.y = \(p3.y)") // p3.x = 3, p3.y = 5

/**********************/
p3.plet.x = 4
println("p4.p.x = \(p3.plet.x), p4.p.y = \(p3.plet.y)") // p3.plet.x = 4, p3.plet.y = 0

let p5  = Point4()
//p3.plet = p5 // can't assign new value to p3.plet since the realtion can't change since the p property of p3 is a constant.
p3.pvar = p5 // even p3 is a constant, its propery can change.


struct Point {
    var x = 0
    let y = 0
}

var a = Point()
let b = Point()

a.x = 1 // var, right.
//a.y = 2 // let, compile time error.
//b.x = 3 // let, compile time error.
//b.y = 4 // let, compile time error.