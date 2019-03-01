//
//  MovieStructTests.swift
//  tddfilmfestTests
//
//  Created by Oliver M Batista on 28/02/19.
//  Copyright © 2019 Oliver M Batista. All rights reserved.
//

import XCTest
@testable import tddfilmfest

class MovieStructTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInit_MovieWithTitle() {
        let testMovie = Movie(title: "Generic Blockbuster")
        
        XCTAssertNotNil(testMovie)
        XCTAssertEqual(testMovie.title, "Generic Blockbuster")
    }

}
