//
//  Circle.swift
//  Test05
//
//  Created by Tuan Ngo Manh on 8/26/14.
//  Copyright (c) 2014 Tuan Ngo Manh. All rights reserved.
//

import Foundation

class Circle: Shape {
    var bankinh: Double
    
    init(bankinh: Double){
        self.bankinh = bankinh
        super.init(numberOfSides: 0, name: "Circle")
    }
    
    override func chuvi() -> Double {
        return 2 * M_PI * self.bankinh
    }
    
    override func dientich() -> Double {
        return self.bankinh * self.bankinh * M_PI
    }
}