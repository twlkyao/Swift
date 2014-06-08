//
//  main.swift
//  Closure
//
//  Created by Jack on 6/7/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

import Foundation

var numbers = [20, 19,7, 12]


numbers.map({
    (number: Int) -> Int in
    if number % 2 == 1 {
        return 0
    }
    return 1
    }
)

