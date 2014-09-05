//
//  Square.swift
//  Test05
//
//  Created by Tuan Ngo Manh on 8/26/14.
//  Copyright (c) 2014 Tuan Ngo Manh. All rights reserved.
//

import Foundation

class Square: Shape{
    var a: Double
    
    init(a: Double){
        self.a = a
        super.init(numberOfSides: 4, name: "Square")
    }
    
    override func chuvi() -> Double {
        return 4 * a
    }
    
    override func dientich() -> Double {
        return a * a
    }
}