//
//  People.swift
//  TuanNM_DemoClass
//
//  Created by Tuan Ngo Manh on 8/27/14.
//  Copyright (c) 2014 Tuan Ngo Manh. All rights reserved.
//

import Foundation

class People{
    var role,work: String
    
    init (role: String, work: String){
        self.role = role
        self.work = work
    }
    
    func peopleDescription() -> String{
        return "This person has role is \(self.role) and he/she has to \(self.work)"
    }
}