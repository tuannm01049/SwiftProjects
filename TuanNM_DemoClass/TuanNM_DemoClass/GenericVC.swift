//
//  GenericVC.swift
//  TuanNM_DemoClass
//
//  Created by Tuan Ngo Manh on 8/27/14.
//  Copyright (c) 2014 Tuan Ngo Manh. All rights reserved.
//

import UIKit

class GenericVC: UIViewController {

    var textfield: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textfield = UITextView(frame: self.view.frame)
        self.textfield.backgroundColor = UIColor.blackColor()
        self.textfield.textColor = UIColor.greenColor()
        self.textfield.font = UIFont(name: "Courier", size: 22)
        
        self.view.addSubview(self.textfield)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func inRa(line: String){
        var text = self.textfield.text!
        text += "\(line) \n"
        self.textfield.text = text
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
