//
//  ConverterTests.swift
//  FirstTests
//
//  Created by Kenny Ho on 7/18/20.
//  Copyright © 2020 Kenny Ho. All rights reserved.
//

import XCTest
@testable import First

class ConverterTests: XCTestCase {

    //sut = "System under test"
    var sut: Converter!
    
    //Gets called before every/each test
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        sut = Converter()
        
        //Stops tests after 1st fail.
//        continueAfterFailure = false
    }

    //Gets called after every/each test
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
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
    
    func test32FahrenheightIsZeroCelsius() {
        //Given
        let input = 32.0
        
        //When
        let celsius = sut.convertToCelsius(fahrenheit: input)
        
        //Then
        XCTAssertEqual(celsius, 0, accuracy: 0.000001)
    }
    
    func test212FahrenheitIs100Celcius() {
        //Given
        let input = 212.0
        
        //When
        let celsius = sut.convertToCelsius(fahrenheit: input)
        
        //Then
        XCTAssertEqual(celsius, 100, accuracy: 0.000001)
    }
    
    func test100FahrenheitIs37Celcius() {
        //Given
        let input = 100.0

        //When
        let celsius = sut.convertToCelsius(fahrenheit: input)

        //Then
        XCTAssertEqual(celsius, 37.777777, accuracy: 0.000001)
    }
}
