//
//  ImportFileVC.swift
//  Test05
//
//  Created by Tuan Ngo Manh on 9/5/14.
//  Copyright (c) 2014 Tuan Ngo Manh. All rights reserved.
//

import UIKit

class ImportFileVC: GenericVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.importData()
        
    }
    
    func importData() {
        
        let bundle = NSBundle.mainBundle()
        let path = bundle.pathForResource("data", ofType: "txt") //get the url of file with name: data, type: txt
        
        let content = String.stringWithContentsOfFile(path!, encoding: NSUTF8StringEncoding, error: nil)!// read data from file to a string value
        //self.inRa("\(content)")
        var countNATO = 0
        var countUkraine = 0
        var countRussia = 0
        
        let myArray = content.componentsSeparatedByString(" ")// split string into an array
        
        for var i = 0; i < myArray.count; i++ {
            if myArray[i] == "NATO" {
                countNATO++
            }
            
            if myArray[i] == "Russia" {
                countRussia++
            }
            
            if myArray[i] == "Ukraine" {
                countUkraine++
            }
        }
        
        self.inRa("There are \(countNATO) times 'NATO' word appear in this document")
        self.inRa("There are \(countUkraine) times 'Ukraine' word appear in this document")
        self.inRa("There are \(countRussia) times 'Russia' word appear in this document")
    }
}
