//
//  ViewController.swift
//  quickPrac
//
//  Created by Xi Xia on 9/22/18.
//  Copyright © 2018 Xi Xia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfVowelsInString(string: String) -> Int {
        let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I",
                                   "O", "U"]
        return string.reduce(0) { $0 + (vowels.contains($1) ? 1
            : 0) }
    }
    
    func skipEvenInLoop (throughRange: Int) -> [Int] {
        var oddIntArray: [Int] = []
        for number in 1...throughRange where number % 2 != 0 {
            oddIntArray.append(number)
        }
        return oddIntArray
    }
    
    func anyEven(numberArray:[Int]) -> Bool {
        let filteredArray = numberArray.filter {return $0 % 2 == 0}
        return filteredArray.count > 0 ? true:false
    }

}

