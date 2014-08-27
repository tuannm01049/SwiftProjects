//
//  PTBac2ViewController.swift
//  Test04
//
//  Created by Tuan Ngo Manh on 8/21/14.
//  Copyright (c) 2014 Tuan Ngo Manh. All rights reserved.
//

import UIKit

class PTBac2ViewController: UIViewController {

    @IBOutlet weak var txtA: UITextField!
    @IBOutlet weak var txtB: UITextField!
    @IBOutlet weak var txtC: UITextField!
    @IBOutlet weak var txtResult: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnSubmit(sender: AnyObject) {
        if let a = txtA.text.toInt(){
            if let b = txtB.text.toInt(){
                if let c = txtC.text.toInt(){
                    if a == 0{
                        txtResult.text = "Day khong phai phuong trinh bac 2"
                    }
                    else{
                        txtResult.text = giaiPTBac2(Float(a), numB: Float(b), numC: Float(c))
                    }
                }
                else{
                    txtResult.text = "Error!"
                }
            }
            else{
                txtResult.text = "Error!"
            }
        }
        else{
            txtResult.text = "Error!"
        }
    }
    
    func giaiPTBac2(numA: Float, numB: Float, numC: Float) -> String{
        var result = ""
        var delta = pow(numB,2) - (4 * numA * numC)
        var nghiem: Float
        var nghiem1: Float
        var nghiem2: Float
        
        if delta < 0{
            result = "Phuong trinh vo nghiem"
        }
        else if delta == 0{
            nghiem = numB * (-1) / (2 * numA)
            result = "Phuong trinh co nghiem la: \(nghiem)"
        }
        else{
            nghiem1 = (numB * (-1) + sqrt(delta)) / (numA * 2)
            nghiem2 = ((numB * (-1)) + (sqrt(delta) * (-1))) / (numA * 2)
            result = "Phuong trinh co 2 nghiem la: \(nghiem1) va \(nghiem2)"
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
