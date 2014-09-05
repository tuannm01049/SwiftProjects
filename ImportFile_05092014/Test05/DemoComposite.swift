//
//  DemoComposite.swift
//  Test05
//
//  Created by Tuan Ngo Manh on 8/26/14.
//  Copyright (c) 2014 Tuan Ngo Manh. All rights reserved.
//

import UIKit

class DemoComposite: GenericVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.demoComposite()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func demoComposite(){
        let c1 = Composite(real: 1, imagine: 3)
        let c2 = Composite(real: 2, imagine: 4)
        let c3 = c1 + c2
        let c4 = c1 - c2
        let c5 = c1 ** c2
        self.inRa(c3.description)
        self.inRa(c4.description)
        self.inRa(c5.description)
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
