//
//  Hater.swift
//  First
//
//  Created by Kenny Ho on 7/17/20.
//  Copyright © 2020 Kenny Ho. All rights reserved.
//

import Foundation

struct Hater {
    var hating = false
    
    mutating func hadABadDay() {
        hating = true
    }
    
    mutating func hadAGoodDay() {
        hating = false
    }
}

