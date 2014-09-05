//
//  Composite.swift
//  Test05
//
//  Created by Tuan Ngo Manh on 8/26/14.
//  Copyright (c) 2014 Tuan Ngo Manh. All rights reserved.
//

import Foundation

infix operator + {}
infix operator - {}
infix operator ** {}

func + (c1: Composite, c2: Composite) -> Composite{
    return Composite(real: c1.real + c2.real, imagine: c1.imagine + c2.imagine)
}

func - (c1: Composite, c2: Composite) -> Composite{
    return Composite(real: c1.real - c2.real, imagine: c1.imagine - c2.imagine)
}

func ** (c1: Composite, c2: Composite) -> Composite{
    return Composite(real: c1.real * c2.real, imagine: c1.imagine * c2.imagine)
}

class Composite{
    var real: Double
    var imagine: Double
    
    init(real: Double, imagine: Double){
        self.real = real
        self.imagine = imagine
    }
    
    var description: String{
        return "\(self.real) + i * \(self.imagine)"
    }
}