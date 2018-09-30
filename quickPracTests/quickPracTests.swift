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

    override func spec() {
        var view: ViewController!
        
        describe("Practicing tests"){
            context("on for loops"){
                beforeEach{
                    view = ViewController ()
                }
                it("counts vowels"){
                    let vowelString = "AEIOUaeiou"
                    let countOfVowels = view.numberOfVowelsInString(string: vowelString)
                    expect(countOfVowels).to(equal(10))
                }
                it("skips even ints in range"){
                    let topOfRange = 10
                    let oddIntArray = view.skipEvenInLoop(throughRange: topOfRange)
                    expect(view.anyEven(numberArray:oddIntArray)).to(equal(false))
                }
            }
        }
        describe("Helper Functions"){
            context("Any Even"){
                beforeEach{
                    view = ViewController()
                }
                it("checks for Even in all odd array"){
                    let allOddArray = [1,3,5,7]
                    expect(view.anyEven(numberArray: allOddArray)).to(equal(false))
                }
                it("checks for Even in mixed array"){
                    let allOddArray = [2,6,5,7]
                    expect(view.anyEven(numberArray: allOddArray)).to(equal(true))
                }
                it("checks for Even in array with zero and odds"){
                    let allOddArray = [0,3,5,7]
                    expect(view.anyEven(numberArray: allOddArray)).to(equal(true))
                }
            }
        }
    }
}


