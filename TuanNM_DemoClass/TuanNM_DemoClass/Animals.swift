//
//  Animals.swift
//  TuanNM_DemoClass
//
//  Created by Tuan Ngo Manh on 8/27/14.
//  Copyright (c) 2014 Tuan Ngo Manh. All rights reserved.
//

import Foundation

class Animals{
    var name: String
    var feathercolor: String
    //var height: Int
    //var weight: Int
    
    init(name: String, feathercolor: String){
        self.name = name
        self.feathercolor = feathercolor
        
    }
    
    func height() -> Int{
        return 0
    }
    
    func weight() -> Int{
        return 0
    }
    
    func animalDescription() -> String{
        var _height = self.height()
        var _weight = self.weight()
        return "This \(self.name) has feather color is \(self.feathercolor) and it weights \(_weight) kg and \(_height) cm high"
    }
    
    
    
}