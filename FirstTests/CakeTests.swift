//
//  CakeTests.swift
//  FirstTests
//
//  Created by Kenny Ho on 7/22/20.
//  Copyright © 2020 Kenny Ho. All rights reserved.
//

import XCTest
@testable import First

class CakeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThreeIngredientCakeCosts9() {
        // given
        let cake = Cake()
        let ingredients = ["chocolate", "cherries", "frosting"]

        // when
        let cost = cake.bake(ingredients: ingredients)

        // then
        XCTAssertEqual(cost, 10)
    }
}
