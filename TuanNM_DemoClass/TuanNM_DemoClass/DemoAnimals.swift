//
//  DemoAnimals.swift
//  TuanNM_DemoClass
//
//  Created by Tuan Ngo Manh on 8/27/14.
//  Copyright (c) 2014 Tuan Ngo Manh. All rights reserved.
//

import UIKit

class DemoAnimals: GenericVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.demoElephant()
        self.demoHuskyDog()
        self.demoPolarBear()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func demoHuskyDog(){
        let huskydog = HuskyDog(height: 70, weight: 40)
        self.inRa("\(huskydog.animalDescription())")
        
    }
    
    func demoElephant(){
        let elephant = Elephant(height: 400, weight: 700)
        self.inRa(elephant.animalDescription())
    }
    
    func demoPolarBear(){
        let polarbear = PolarBear(height: 200, weight: 200)
        self.inRa(polarbear.animalDescription())
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
