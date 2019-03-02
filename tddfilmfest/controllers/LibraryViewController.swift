//
//  ViewController.swift
//  tddfilmfest
//
//  Created by Oliver M Batista on 28/02/19.
//  Copyright © 2019 Oliver M Batista. All rights reserved.
//

import UIKit

class LibraryViewController: UIViewController {

    @IBOutlet weak var libraryTableView: UITableView!
    @IBOutlet var dataService: MovieLibraryDataService!
    
    var movieManager = MovieManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.libraryTableView.dataSource = dataService
        self.libraryTableView.delegate = dataService
        
        dataService.movieManager = movieManager
        
        dataService.movieManager?.addMovie(movie: Movie(title: "Action", releaseDate: "1999"))
        dataService.movieManager?.addMovie(movie: Movie(title: "Horror", releaseDate: "1989"))
        dataService.movieManager?.addMovie(movie: Movie(title: "Crime Thriller", releaseDate: "1979"))
        dataService.movieManager?.addMovie(movie: Movie(title: "Indie Comedy"))
        dataService.movieManager?.addMovie(movie: Movie(title: "Kung Fu Flick"))
        
        libraryTableView.reloadData()
    }


}

