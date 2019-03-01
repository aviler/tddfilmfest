//
//  MovieManagerTests.swift
//  tddfilmfestTests
//
//  Created by Oliver M Batista on 01/03/19.
//  Copyright © 2019 Oliver M Batista. All rights reserved.
//

import XCTest

@testable import tddfilmfest

class MovieManagerTests: XCTestCase {
    
    // sut = system under test
    var sut : MovieManager!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = MovieManager()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // MARK: Initial Values
    func testInit_MoviesToSee_ReturnsZero() {
        XCTAssertEqual(sut.moviesToSeeCount, 0)
    }
    
    func testInit_MoviesSeen_ReturnsZero() {
        XCTAssertEqual(sut.moviesSeenCount, 0)
    }
    
    // MARK: Add & Query
    func testAdd_MoviesToSee_ReturnsOne() {
        let testMovie = Movie(title: "Sci-Fi")
        sut.addMovie(movie: testMovie)
        
        XCTAssertEqual(sut.moviesToSeeCount, 1)
    }

    func testQuery_ReturnsMovieAtIndex() {
        let testMovie = Movie(title: "Arthouse Drama")
        sut.addMovie(movie: testMovie)
        
        let movieQueried = sut.movieAtIndex(index: 0)
        XCTAssertEqual(testMovie.title, movieQueried.title)
        
    }
}
