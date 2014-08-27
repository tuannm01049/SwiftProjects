//
//  CapSoNhanViewController.swift
//  Test04
//
//  Created by Tuan Ngo Manh on 8/21/14.
//  Copyright (c) 2014 Tuan Ngo Manh. All rights reserved.
//

import UIKit

class CapSoNhanViewController: UIViewController {

    @IBOutlet weak var txtNumber: UITextField!
    @IBOutlet weak var txtPower: UITextField!
    @IBOutlet weak var txtElements: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnSubmit(sender: AnyObject) {
        var result: String = ""
        if let number = txtNumber.text.toInt(){
            if let power = txtPower.text.toInt(){
                if let element = txtElements.text.toInt(){
                    if element <= 0{
                        lblResult.text = "Error!"
                    }
                    else{
                        if element == 1{
                            lblResult.text = "\(number)"
                        }
                        else{
                            for var i = 0; i < generateCapSoNhan(number, power: power, elements: element).count; i++ {
                                result += "\(generateCapSoNhan(number, power: power, elements: element)[i]) , "
                            }
                            lblResult.text = result
                        }
                    }
                    
                }
                else{
                    lblResult.text = "Error!"
                }
            }
            else{
                lblResult.text = "Error!"
            }
        }
        else{
            lblResult.text = "Error!"
        }
        
    }
    

    func generateCapSoNhan(number: Int, power: Int, elements: Int) -> [Int]{
        var result = Array(count: elements, repeatedValue: number)
        for var i = 1; i < result.count; i++ {
            //result[i] = Int(pow(Float(result[i - 1]),Float(power)))
            result[i] = result[i - 1] * power
        }
        
        return result
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
