//
//  main.swift
//  ExternalParameterName
//
//  Created by Jack on 6/29/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

/*
* use "_" to ingore external parameter name.
*/

/*
 * external parameter name, when call a function or a method with external parameter name,
 * must use the external parameter name, or will results in a compile error.
 * 1. the second and the following parameters of a method have external parameter names.
 * 2. the parameter of a function or method that has a default value, has external parameter name.
 * 3. a parameter prefixed with a hash symbol, has an external parameter name.
 */

/*
 * to omit the external parameter name, you can put a underscore before the parameter name to omit it.
 */

class Counter {
    var count: Int = 0
    func incrementBy(amount: Int, _ numberOfTimes: Int) { // omit the external parameter name of a method.
        count += amount * numberOfTimes
    }
}

var counter = Counter()
counter.incrementBy(3, 4)
println(counter.count)

func join(s1: String, s2: String, _ joiner: String = " ") -> String { // omit the external parameter name of a function.
    return s1 + joiner + s2
}
// call the function.
join("hello", "world", "-")

/*
* use hash symbol to force add external parameter name.
*/
class Counter1 {
    var count: Int = 0
    func incrementBy(#amount: Int, numberOfTimes: Int) { // add a external parameter name by force.
        count += amount * numberOfTimes
    }
}

var counter1 = Counter1()
counter1.incrementBy(amount: 4, numberOfTimes: 5) // must use the external parameter name, when calling the method.
println(counter1.count)
