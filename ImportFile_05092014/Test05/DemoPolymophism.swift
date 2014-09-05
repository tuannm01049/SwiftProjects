//
//  DemoPolymophism.swift
//  Test05
//
//  Created by Tuan Ngo Manh on 8/26/14.
//  Copyright (c) 2014 Tuan Ngo Manh. All rights reserved.
//

import UIKit

class DemoPolymophism: GenericVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.demoPoly()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func demoPoly(){
        var result = self.textview.text!
        let rec = Rectangle(a: 3, b: 4)
        let tri = Triangle(a: 3, b: 4, c: 5)
        let squa = Square(a: 5)
        let cir = Circle(bankinh: 4)
        
        let shapes = [rec, tri, squa, cir]
        
        for shape in shapes{
            //inRa("\(shape.name) has \(shape.numberOfSides) Sides \n")
            inRa(shape.description)
        }
        
        
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
