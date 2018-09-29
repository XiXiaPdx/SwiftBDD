//
//  bananaTests.swift
//  quickPracTests
//
//  Created by Xi Xia on 9/22/18.
//  Copyright © 2018 Xi Xia. All rights reserved.
//

import XCTest
import Nimble
import Quick

@testable import quickPrac

class bananaTests: QuickSpec {
    override func spec() {
        it("is a banana"){
            let banana = Banana()
            expect(banana is Banana).to(beTrue())
        }
    }
}




