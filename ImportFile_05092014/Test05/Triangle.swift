//
//  Triangle.swift
//  Test05
//
//  Created by Tuan Ngo Manh on 8/26/14.
//  Copyright (c) 2014 Tuan Ngo Manh. All rights reserved.
//

import Foundation

class Triangle:Shape{
    var a, b, c: Double
    
    init(a: Double, b: Double, c: Double){
        self.a = a
        self.b = b
        self.c = c
        super.init(numberOfSides: 3, name: "Triangle")
    }
    
    override func chuvi() -> Double {
        return a + b + c
    }
    
    override func dientich() -> Double {
        let s = 0.5 * self.chuvi()
        return sqrt(s * (s - a) * (s - b) * (s - c))
    }
}