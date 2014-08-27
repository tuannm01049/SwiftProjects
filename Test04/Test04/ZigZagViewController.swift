//
//  ZigZagViewController.swift
//  Test04
//
//  Created by Tuan Ngo Manh on 8/22/14.
//  Copyright (c) 2014 Tuan Ngo Manh. All rights reserved.
//

import UIKit

class ZigZagViewController: UIViewController {

    
    @IBOutlet weak var lblResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        /*
        lblResult.text = "          *          \n"
                       + "         * *         \n"
                       + "        *   *        \n"
                       + "       *     *       \n"
                       + "      *       *      \n"
                       + "     *         *     \n"
                       + "    *           *    \n"
        */
        //lblResult.text = generateZigZag()
        
        var resulttext = ""
        var dothi = [Array(count: 10, repeatedValue: " "),
        Array(count: 10, repeatedValue: " "),
        Array(count: 10, repeatedValue: " "),
        Array(count: 10, repeatedValue: " "),
        Array(count: 10, repeatedValue: " "),
        Array(count: 10, repeatedValue: " "),
        Array(count: 10, repeatedValue: " "),
        Array(count: 10, repeatedValue: " "),
        Array(count: 10, repeatedValue: " "),
        Array(count: 10, repeatedValue: " ")]
        
        for var i = -5; i < 2; i++ {
            var y = drawZigZag(i)
            println("x = \(i) and y = \(y)")
            dothi[i+7][y+7] = "*"
        }
        
        for var a = 0; a < dothi.count; a++ {
            for item in dothi[a] {
                resulttext += item
            }
            resulttext += "\n"
        }
        
        lblResult.text = resulttext
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func generateZigZag() -> String{
        var result = ""
        var line1 = Array(count: 19, repeatedValue: " ")
        var line2 = Array(count: 19, repeatedValue: " ")
        var line3 = Array(count: 19, repeatedValue: " ")
        var line4 = Array(count: 19, repeatedValue: " ")
        var line5 = Array(count: 19, repeatedValue: " ")
        var line6 = Array(count: 19, repeatedValue: " ")
        var line7 = Array(count: 19, repeatedValue: " ")
        
        for var i = 0; i < line1.count; i++ {
            if i == 9{
                line1[i] = "*"
            }
            result += line1[i]
        }
        result += "\n"
        for var i = 0; i < line2.count; i++ {
            if i == 8 || i == 10{
                line2[i] = "*"
            }
            result += line2[i]
        }
        result += "\n"
        for var i = 0; i < line3.count; i++ {
            if i == 7 || i == 11{
                line3[i] = "*"
            }
            result += line3[i]
        }
        result += "\n"
        for var i = 0; i < line4.count; i++ {
            if i == 6 || i == 12{
                line4[i] = "*"
            }
            result += line4[i]
        }
        result += "\n"
        for var i = 0; i < line5.count; i++ {
            if i == 5 || i == 13{
                line5[i] = "*"
            }
            result += line5[i]
        }
        result += "\n"
        for var i = 0; i < line6.count; i++ {
            if i == 4 || i == 14{
                line6[i] = "*"
            }
            result += line6[i]
        }
        result += "\n"
        for var i = 0; i < line7.count; i++ {
            if i == 3 || i == 15{
                line7[i] = "*"
            }
            result += line7[i]
        }
        result += "\n"
        return result
    }

    func drawZigZag(valuex: Int) -> Int{
        return (valuex * valuex) + 4 * valuex - 3
        
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
