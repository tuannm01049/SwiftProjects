//
//  GenericVC.swift
//  Test05
//
//  Created by Tuan Ngo Manh on 8/26/14.
//  Copyright (c) 2014 Tuan Ngo Manh. All rights reserved.
//

import UIKit

class GenericVC: UIViewController {

    var textview: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textview = UITextView(frame: self.view.frame)
        self.textview.backgroundColor = UIColor.blackColor()
        self.textview.textColor = UIColor.greenColor()
        self.textview.font = UIFont(name: "Courier", size: 24)
        
        self.view.addSubview(self.textview)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func inRa(line: String){
        var text = self.textview.text!
        //text += ("\(line) \n")
        text += "\(line) \n"
        self.textview.text = text
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
