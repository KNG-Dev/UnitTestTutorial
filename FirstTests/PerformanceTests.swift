//
//  PerformanceTests.swift
//  FirstTests
//
//  Created by Kenny Ho on 7/21/20.
//  Copyright © 2020 Kenny Ho. All rights reserved.
//

import XCTest
@testable import First

class PerformanceTests: XCTestCase {

    func testPrimePerformance() {
        measure {
            _ = PrimeCalculator.calculateForPerformance(upTo: 1_000_000)
        }
    }
}
