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
    
    func fakeAsyncWaitSeconds(sleepTime: UInt32) -> Bool {
        var condition: Bool = true
        let pause = {
        Thread.sleep(forTimeInterval: TimeInterval(sleepTime))
            condition = false
        }
        pause ()
        return condition
    }
    
    func networkCall () {
        // get URL shared session singleton for most basic network requests
        let sharedSession = URLSession.shared
        
        //this is similar guard, to check for null, using optional ability of swift
        if let url = URL(string: "https://goo.gl/wV9G4I"){
            let request = URLRequest(url: url)
            let dataTask = sharedSession.dataTask(with: url, completionHandler: {(data, response, error)-> Void in
                
                if let data = data {
                    DispatchQueue.main.async {
                        print(response)
                    }
                }
            })
            dataTask.resume()
        }
    }
}
