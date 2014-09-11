//
//  QuickNBubbleSort.swift
//  DemoClass
//
//  Created by Tuan Ngo Manh on 9/11/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class QuickNBubbleSort: GenericVC {

    var myArray: [Int] = [3, 5, 2, 1, 10, 20, 4, 6, 7, 21]
    var myArray1: [Int] = [2, 6, 8, 1, 22, 10, 17, 9, 2, 18, 0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.quickSort(&myArray, start: 0, end: myArray.count - 1)
        self.inRa("Quick Sort \n --------------")
        for item in myArray {
            self.inRa("\(item)")
        }
        
        self.bubbleSort(&myArray1)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func quickSort(inout array: [Int], start: Int, end: Int) {
        var i = start
        var j = end
        var pivotValue = array[(i + j) / 2]
        while (i <= j) {
            while (array[i] < pivotValue) {
                i++
            }
            while (array[j] > pivotValue) {
                j--
            }
            if (i <= j) {
                var temp: Int = array[i]
                array[i] = array[j]
                array[j] = temp
                
                i++
                j--
            }
        }
        
        if (start < j) {
            quickSort(&array, start: start, end: j)
        }
        
        if (i < end) {
            quickSort(&array, start: i, end: end)
        }
    }
    
    func bubbleSort(inout array: [Int]) {
        for var i = 0; i < array.count - 1; i++ {
            for var j = i + 1; j < array.count; j++ {
                if (array[i] > array[j]) {
                    var temp = array[i]
                    array[i] = array[j]
                    array[j] = temp
                }
            }
        }
        
        self.inRa("Bubble Sort \n ---------------------")
        for item in array {
            self.inRa("\(item)")
        }
    }

}
