//
//  FirstTests.swift
//  FirstTests
//
//  Created by Kenny Ho on 7/17/20.
//  Copyright © 2020 Kenny Ho. All rights reserved.
//

import XCTest
@testable import First

class FirstTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testHaterStartsNicely() {
        let hater = Hater()
        
        XCTAssertFalse(hater.hating)
    }
    
    func testHaterHatesAfterBadDay() {
        var hater = Hater()
        
        hater.hadABadDay()
        
        XCTAssertFalse(hater.hating)
    }
    
    func testHaterHappyAfterGoodDay() {
        //Given/Arrange
        var hater = Hater()
       
        //When/Act
        hater.hadAGoodDay()
        
        //Then/Assert
        XCTAssertFalse(hater.hating)
    }

}
