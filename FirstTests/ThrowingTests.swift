//
//  ThrowingTests.swift
//  FirstTests
//
//  Created by Kenny Ho on 7/19/20.
//  Copyright © 2020 Kenny Ho. All rights reserved.
//

import XCTest

extension LocalizedError {
    var errorDescription: String? {
        return "\(self)"
    }
}

enum GameError: LocalizedError {
    case notPurchased
    case notInstalled
    case parentalControlsDisallowed
}

struct Game {
    let name: String
    
    func play() throws {
        if name == "BioBlitz" {
            throw GameError.notPurchased
        } else if name == "Blastazap" {
            throw GameError.notInstalled
        } else if name == "Dead Storm Rising" {
            throw GameError.parentalControlsDisallowed
        } else {
            print("\(name) is OK to play!")
        }
    }
}

class ThrowingTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
//        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPlayingBioBlitzThrows() {
        let game = Game(name: "BioBlitz")
        
        do {
            try game.play()
            XCTFail()
        } catch GameError.notPurchased {
            //If game.play() doesnt through the test should fail, if it throws notPurchased, then it is a success. BUt if throwing everything else, it should fail
        } catch {
            XCTFail()
        }
    }
    
    func testPlayingBlastazapThrows() {
        let game = Game(name: "Blastazap")
        
        XCTAssertThrowsError(try game.play()) { error
            in XCTAssertEqual(error as? GameError, GameError.notInstalled)
        }
    }
    
    func testPlayingExplodingMonkeysDoesntThrow() {
        let game = Game(name: "Exploding Monkeys")
        
        XCTAssertNoThrow(try game.play())
    }
    
    func testDeadStormRisingThrows() throws {
        let game = Game(name: "Dead Storm Rising")
        
        XCTAssertThrowsError(try game.play()) { error
            in XCTAssertEqual(error as? GameError, GameError.parentalControlsDisallowed)
        }
    }
    
    func testCrashyPlaneDoesntThrow() throws {
        let game = Game(name: "CrashyPlane")
        try game.play()
    }

//    func testIBButtons() {
    //If using storyboard, testing to make sure outlets are connected can save a huge time.
//        XCTAssertNil(sut.submitButton)
//    }
    

}
