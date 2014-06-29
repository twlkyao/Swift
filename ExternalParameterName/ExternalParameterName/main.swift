//
//  main.swift
//  UnderScore
//
//  Created by Jack on 6/29/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

import Foundation

/*
* use "_" to ingore external parameter name.
*/

/*
 * external name, a function or method has external name must use it when being called, or will result an compile error.
 * 1. the second and flowing parameters of a method have external names.
 * 2. the parameter of a function or a method which has a default value has an external name.
 * 3. use hash symbol to force add an external name.
 */

/*
 * omit external name.
 * 1. use a underscore symbol.
 */

class Counter {
    var count: Int = 0
    func incrementBy(amount: Int, _ numberOfTimes: Int) {
        count += amount * numberOfTimes
    }
}

var counter = Counter()
counter.incrementBy(3, 4) // the external name is ignored.
println(counter.count)

func join(s1: String, s2: String, _ joiner: String = " ") -> String {
    return s1 + joiner + s2
}
// call the function.
join("hello", "world", "-") // the external name is ignored.

/*
* use hash symbol to force add external parameter name.
*/
class Counter1 {
    var count: Int = 0
    func incrementBy(#amount: Int, numberOfTimes: Int) {
        count += amount * numberOfTimes
    }
}

var counter1 = Counter1()
counter1.incrementBy(amount: 4, numberOfTimes: 5)
println(counter1.count)