//
//  banana.swift
//  quickPrac
//
//  Created by Xi Xia on 9/22/18.
//  Copyright © 2018 Xi Xia. All rights reserved.
//

import Foundation

 public class Banana {
    private var isPeeled = false
    
    /** Peels the banana. */
    public func peel() {
        isPeeled = true
    }
    
    /** You shouldn't eat a banana unless it's been peeled. */
    public var isEdible: Bool {
        return isPeeled
    }
    
}
