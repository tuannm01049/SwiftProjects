//
//  Elephant.swift
//  TuanNM_DemoClass
//
//  Created by Tuan Ngo Manh on 8/27/14.
//  Copyright (c) 2014 Tuan Ngo Manh. All rights reserved.
//

import Foundation

class Elephant: Animals{
    var _height,_weight: Int
    
    init(height: Int, weight: Int){
        self._weight = weight
        self._height = height
        super.init(name: "Elephant", feathercolor: "No feather")
    }
    
    override func weight() -> Int {
        return _weight
    }
    
    override func height() -> Int {
        return _height
    }
}
