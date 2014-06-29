//
//  main.swift
//  class
//
//  Created by Jack on 6/9/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

import Foundation

class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name: String) { // initializer.
        self.name = name
    }

    func description() -> String {
        return "A shape with \(numberOfSides) sides."
    }

    deinit{ // deinitializer.
        println("Deinited!")
    }
}

var namedShape = NamedShape(name: "namedShape") // must use the label of the parameter, or there will be an error.
println("namedShape.name= \(namedShape.name)")