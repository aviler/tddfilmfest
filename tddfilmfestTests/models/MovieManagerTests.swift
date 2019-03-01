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

    let scifi = Movie(title: "Sci-Fi")
    let artDrama = Movie(title: "Arthouse Drama")
    let action = Movie(title: "Action/Adventure")
    
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
        sut.addMovie(movie: scifi)
        
        XCTAssertEqual(sut.moviesToSeeCount, 1)
    }

    func testQuery_ReturnsMovieAtIndex() {
        sut.addMovie(movie: artDrama)
        let movieQueried = sut.movieAtIndex(index: 0)
        
        XCTAssertEqual(artDrama.title, movieQueried.title)
    }
    
    //MARK: Checking Off
    func testCheckOffMovie_UpdatesMovieManagerCounts() {
        sut.addMovie(movie: action)
        sut.checkOffMovieAtIndex(index: 0)
        
        XCTAssertEqual(sut.moviesToSeeCount, 0)
        XCTAssertEqual(sut.moviesSeenCount, 1)
    }
    
    func testCheckOffMovie_RemovesMovieFromArray() {
        sut.addMovie(movie: scifi)
        sut.addMovie(movie: artDrama)
        sut.checkOffMovieAtIndex(index: 0)
        
        XCTAssertEqual(sut.movieAtIndex(index: 0).title, artDrama.title )
    }
    
    func testCheckOffMovie_ReturnsMovieAtIndex() {
        sut.addMovie(movie: scifi)
        sut.checkOffMovieAtIndex(index: 0)
        
        let movieQueried = sut.checkedOffMovieAtIndex(index: 0)
        XCTAssertEqual(scifi.title, movieQueried.title)
    }
    
    // MARK: Clearing
    func testClearArrays_ReturnsArrayCountOfZero() {
        sut.addMovie(movie: scifi)
        sut.addMovie(movie: action)
        sut.checkOffMovieAtIndex(index: 0)
        
        XCTAssertEqual(sut.moviesToSeeCount, 1)
        XCTAssertEqual(sut.moviesSeenCount, 1)
        
        sut.clearArrays()
        
        XCTAssertEqual(sut.moviesToSeeCount, 0)
        XCTAssertEqual(sut.moviesSeenCount, 0)
    }
    
    // MARK: Duplicates
    func testDuplicateMovies_ShouldNotBeAddedToArray() {
        sut.addMovie(movie: scifi)
        sut.addMovie(movie: scifi)
        
        XCTAssertEqual(sut.moviesToSeeCount, 1)
    }
}
