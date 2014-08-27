
//
//  DemoPeople.swift
//  TuanNM_DemoClass
//
//  Created by Tuan Ngo Manh on 8/27/14.
//  Copyright (c) 2014 Tuan Ngo Manh. All rights reserved.
//

import UIKit

class DemoPeople: GenericVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.demoStudent()
        self.demoTeacher()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func demoStudent(){
        let stud = Student()
        self.inRa(stud.peopleDescription())
    }
    
    func demoTeacher(){
        let teacher = Teacher()
        self.inRa(teacher.peopleDescription())
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
