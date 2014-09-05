//
//  DemoShape.swift
//  Test05
//
//  Created by Tuan Ngo Manh on 8/26/14.
//  Copyright (c) 2014 Tuan Ngo Manh. All rights reserved.
//

import UIKit

class DemoShape: GenericVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.demoShape()
        self.demoRectangle()
        self.demoTriangle()
        self.demoSquare()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func demoShape(){
        let shape = Shape(numberOfSides: 3, name: "Rectangle")
        self.inRa("\(shape.name) has \(shape.numberOfSides) Sides")
        shape.printDescription()
        self.inRa(shape.description)
    }
    
    func demoRectangle(){
        let rec = Rectangle(a: 3,b: 4)
        self.inRa("Rectangle has perimeter: \(rec.chuvi()) and square: \(rec.dientich())")
        
    }
    
    func demoTriangle(){
        let tri = Triangle(a: 3,b: 4,c: 5)
        self.inRa("Triangle has perimeter: \(tri.chuvi()) and square: \(tri.dientich())")
    }
    
    func demoSquare(){
        let squa = Square(a: 6)
        self.inRa("Square has perimeter: \(squa.chuvi()) and \(squa.dientich())")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
