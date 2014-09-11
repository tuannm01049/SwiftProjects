//
//  WordCounter.swift
//  DemoClass
//
//  Created by techmaster on 9/9/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit
class Word {
    var word: String
    var count: Int = 1
    init(word: String) {
        self.word = word
    }
    func increment() {
        self.count += 1
    }
}
class WordCounter: GenericVC {

    var WordCountNSort: [Word] = [Word]()
    override func viewDidLoad() {
        super.viewDidLoad()
//        if let plainString = self.readFileToString("data1.txt") {
//            self.countWord(plainString)
//        }
        
        self.countWord(" yellow I like this. i hate that dog. Cat is fun,joke,love: is it cool?. dog,flower;dog. hate is bad hate.Love is all around. Red blue green yellow violet sexy hate around cool around around yellow")
        
        
        //self.countWord("aa nn mm cc kk ee cc bb bb ee dd aa")
        //self.countWord("cc kk cc")
    }
    
    func readFileToString(textFile: String) -> String? {
        let fileNameArr = textFile.componentsSeparatedByString(".")
        if fileNameArr.count != 2 { return nil }
        
        let filePath = NSBundle.mainBundle().pathForResource(fileNameArr[0], ofType: fileNameArr[1])
        println("\(filePath)")
        
        return String.stringWithContentsOfFile(filePath!, encoding: NSUTF8StringEncoding, error: nil)
    }
    func shouldRemoveThisWord(word: String) -> Bool {
    
        let dummyWords = ["", " ","a", "all", "an", "i", "in", "is", "it", "are", "were", "he", "she", "they", "it's", "my", "his", "her", "their", "this", "that", "very", "much", "of", "the", "and", "its", "to", "not", "but"]
        if contains(dummyWords, word) { return true }
        
        return false;
    }
    
    func countWord(inputString: String) {
        let separator = NSMutableCharacterSet(charactersInString: " .,:;?!--()'%\n")
        let rawWordArray = inputString.lowercaseString.componentsSeparatedByCharactersInSet(separator)
       
        /* ok nhung khong sort duoc
        let wordSet = NSCountedSet()
        for word in rawWordArray {
            if !self.shouldRemoveThisWord(word) {
                wordSet.addObject(word)
            }
        }
        
        for word in wordSet {
            self.inRa("\(word) : \(wordSet.countForObject(word))")
        }*/
        
        for word in rawWordArray {
            if !self.shouldRemoveThisWord(word) {
                //self.insertWordToWordCountNSort(word)
                self.insertToWordCountNSortReverse(word)
            }
        }
       self.inRa("Z - A Sort")
       for item in WordCountNSort {
        
            self.inRa("\(item.word) : \(item.count)")
            //println("\(item.word) : \(item.count)")
        }
        self.inRa("---------------------")
        self.inRa("Count Sort")
        self.countSort()
        
    }
    
    func insertWordToWordCountNSort(word: String) {
        var index = 0
        if (WordCountNSort.count == 0) {
            WordCountNSort.append(Word(word: word))
            return
        }
        
        for item in WordCountNSort {
            if (word < item.word) {
                WordCountNSort.insert(Word(word: word), atIndex: index)
                return
            } else if (word == item.word) {
                item.increment()
                return
            } else if (word > item.word) {
                index++
                if (index == WordCountNSort.count) {
                    WordCountNSort.append(Word(word: word))
                }
            }
        }
    }
    
    func insertToWordCountNSortReverse(word: String) {
        var index = 0
        if (WordCountNSort.count == 0) {
            WordCountNSort.append(Word(word: word))
            return
        }
        
        else {
            for item in WordCountNSort {
                if (word > item.word) {
                    WordCountNSort.insert(Word(word: word), atIndex: index)
                    return
                } else if (word == item.word) {
                    item.increment()
                    return
                } else if (word < item.word) {
                    index++
                    if (index == WordCountNSort.count) {
                        WordCountNSort.append(Word(word: word))
                    }
                }
            }
        }
    }
    
    func countSort() {
        var tempWord = ""
        var tempCount = 0
        for var i = 0; i < WordCountNSort.count - 1; i++ {
            println("\(i)")
            for var x = i + 1; x < WordCountNSort.count; x++ {
                println("\(x)")
                if (WordCountNSort[i].count < WordCountNSort[x].count) {
                    tempCount = WordCountNSort[i].count
                    tempWord = WordCountNSort[i].word
                    WordCountNSort[i].count = WordCountNSort[x].count
                    WordCountNSort[i].word = WordCountNSort[x].word
                    
                    WordCountNSort[x].count = tempCount
                    WordCountNSort[x].word = tempWord
                    
                    println("\(WordCountNSort[i].word) - \(WordCountNSort[i].count)")
                    
                }
            }
            
        }
        for item in WordCountNSort {
            self.inRa("\(item.word) : \(item.count)")
        }
        
    }

}
