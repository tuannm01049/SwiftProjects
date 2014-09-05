//
//  Shape.swift
//  Test05
//
//  Created by Tuan Ngo Manh on 8/26/14.
//  Copyright (c) 2014 Tuan Ngo Manh. All rights reserved.
//

import Foundation

class Shape{
    var numberOfSides: Int = 0
    var name: String
    
    init(numberOfSides: Int, name: String){
        self.numberOfSides = numberOfSides
        self.name = name
    }
    
    func printDescription(){
        println("\(self.name) has \(self.numberOfSides) Sides")
    }
    
    var description: String{
        return "\(self.name) has \(self.numberOfSides) Sides"
    }
    
    func chuvi() -> Double{
        return 0.0
    }
    
    func dientich() -> Double{
        return 0.0
    }
    
    
}
