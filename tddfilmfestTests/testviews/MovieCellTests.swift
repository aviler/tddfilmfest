//
//  MovieCellTests.swift
//  tddfilmfestTests
//
//  Created by Oliver M Batista on 02/03/19.
//  Copyright © 2019 Oliver M Batista. All rights reserved.
//

import XCTest

@testable import tddfilmfest

class MovieCellTests: XCTestCase {

    var tableView: UITableView!
    var mockDataSource: MockCellDataSource!
    
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let libraryVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LibraryViewControllerID") as! LibraryViewController
        _ = libraryVC.view
        
        tableView = libraryVC.libraryTableView
        mockDataSource = MockCellDataSource()
        tableView.dataSource = mockDataSource
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCell_Config_ShouldSetLabelsToMovieData() {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCellID", for: IndexPath(row: 0, section: 0)) as! MovieCell
        cell.configMovieCell(movie: Movie(title: "Indie Comedy", releaseDate: "2018"))
        
        XCTAssertEqual(cell.textLabel?.text, "Indie Comedy")
        XCTAssertEqual(cell.detailTextLabel?.text, "2018")
    }

}
