//
//  HouseTests.swift
//  FirstTests
//
//  Created by Kenny Ho on 7/21/20.
//  Copyright © 2020 Kenny Ho. All rights reserved.
//

import XCTest
@testable import First

class HouseTests: XCTestCase {

    func test4Bed2BathHouse_Fits3Bed2BathRequirements() {
        // given
        let house = House(bedrooms: 4, bathrooms: 2)
        let desiredBedrooms = 3
        let desiredBathrooms = 2

        // when
        let suitability = house.checkSuitability(desiredBedrooms: desiredBedrooms, desiredBathrooms: desiredBathrooms)

        // then
        XCTAssertTrue(suitability)
    }
}
