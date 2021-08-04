//
//  DafitiTestTests.swift
//  DafitiTestTests
//
//  Created by Diego Fernando Cuesta on 3/08/21.
//

import XCTest
@testable import DafitiTest

class DafitiTestTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testStraight() throws {
        let controller = ViewController()
            
            let hand1 = [14, 2, 3, 4, 5]
        XCTAssert(controller.isStraight(hand1))

        let hand2 = [9, 10, 11, 12, 13]
        XCTAssert(controller.isStraight(hand2))

        let hand3 = [2, 7, 8, 5, 10, 9, 11]
        XCTAssert(controller.isStraight(hand3))

        let hand4 = [7, 8, 12, 13, 14]
        XCTAssertFalse(controller.isStraight(hand4))

        let hand5 = [2, 2, 2, 2, 2]
        XCTAssertFalse(controller.isStraight(hand5))
    }


}
