//
//  HuskyDog.swift
//  TuanNM_DemoClass
//
//  Created by Tuan Ngo Manh on 8/27/14.
//  Copyright (c) 2014 Tuan Ngo Manh. All rights reserved.
//

import Foundation

class HuskyDog: Animals{
    var _height,_weight: Int
    
    init(height: Int, weight: Int){
        self._height = height
        self._weight = weight
        super.init(name: "Husky Dog", feathercolor: "Black & White")
    }
    
    override func height() -> Int {
        return _height
    }
    
    override func weight() -> Int {
        return _weight
    }
}