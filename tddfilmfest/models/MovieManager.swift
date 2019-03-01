//
//  MovieManager.swift
//  tddfilmfest
//
//  Created by Oliver M Batista on 01/03/19.
//  Copyright © 2019 Oliver M Batista. All rights reserved.
//

import Foundation

class MovieManager {
    var moviesToSeeCount = 0
    let moviesSeenCount = 0
    
    private var moviesToSeeArray = [Movie]()
    
    func addMovie(movie: Movie) {
        self.moviesToSeeCount+=1
        self.moviesToSeeArray.append(movie)
    }
    
    func movieAtIndex(index: Int) -> Movie {
        return self.moviesToSeeArray[index]
    }
}
