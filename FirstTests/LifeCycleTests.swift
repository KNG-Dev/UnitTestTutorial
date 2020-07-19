//
//  LifeCycleTests.swift
//  FirstTests
//
//  Created by Kenny Ho on 7/19/20.
//  Copyright © 2020 Kenny Ho. All rights reserved.
//

import XCTest

class LifeCycleTests: XCTestCase {

    override func setUpWithError() throws {
        print("In class setUp.")
    }

    override func tearDownWithError() throws {
        print("In class tearDown.")
    }
    
    override func setUp() {
        print("in setUp.")
    }
    
    override func tearDown() {
        print("in tearDown.")
    }

    func testExample() throws {
        print("Starting tests")
        
        addTeardownBlock {
            print("In first tearDown block.")
        }
        
        print("In middle of tests.")
        
        addTeardownBlock {
            print("In second tearDown block.")
        }
        
        print("Finishing test.")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
