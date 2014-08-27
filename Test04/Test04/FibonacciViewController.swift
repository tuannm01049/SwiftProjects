//
//  FibonacciViewController.swift
//  Test04
//
//  Created by Tuan Ngo Manh on 8/20/14.
//  Copyright (c) 2014 Tuan Ngo Manh. All rights reserved.
//

import UIKit

class FibonacciViewController: UIViewController {

    @IBOutlet weak var txtInput: UITextField!
    @IBOutlet weak var lblKetQua: UILabel!
    
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
        if let number = txtInput.text.toInt(){
            for var i = 0; i < generateFibonacci(number).count; i++ {
                    result += "\(generateFibonacci(number)[i]) , "
                }
            lblKetQua.text = result
        }
        else{
            lblKetQua.text = "Error!!!"
        }
    }
    
    func generateFibonacci(number: Int) -> [Int]{
        var Fibo = Array(count: number, repeatedValue: 0)
        Fibo[1] = 1
        for var i = 2; i < Fibo.count; i++ {
            Fibo[i] = Fibo[i - 1] + Fibo[i - 2]
            println("\(i) = \(Fibo[i])")
        }
        return Fibo
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
