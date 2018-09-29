//
//  quickPracTests.swift
//  quickPracTests
//
//  Created by Xi Xia on 9/22/18.
//  Copyright © 2018 Xi Xia. All rights reserved.
//

import XCTest
import Nimble
import Quick


@testable import quickPrac

class quickPracTests: QuickSpec {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    override func spec() {
        it("counts vowels"){
            let vowelString = "AEIOUaeiou"
            let view = ViewController ()
            let countOfVowels = view.numberOfVowelsInString(string: vowelString)
            expect(countOfVowels).to(equal(10))
        }
                
    }
    
}


