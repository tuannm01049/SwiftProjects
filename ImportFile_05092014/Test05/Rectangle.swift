//
//  Rectangle.swift
//  Test05
//
//  Created by Tuan Ngo Manh on 8/26/14.
//  Copyright (c) 2014 Tuan Ngo Manh. All rights reserved.
//

import Foundation

class Rectangle: Shape{
    var a, b: Double
    
    init(a: Double, b: Double){
        self.a = a
        self.b = b
        super.init(numberOfSides: 4, name: "Rectangle")
    }
    
    override func chuvi() -> Double {
        return 2 * (a + b)
    }
    
    override func dientich() -> Double {
        return a * b
    }
}
