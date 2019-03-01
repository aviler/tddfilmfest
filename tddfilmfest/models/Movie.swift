//
//  Movie.swift
//  tddfilmfest
//
//  Created by Oliver M Batista on 28/02/19.
//  Copyright © 2019 Oliver M Batista. All rights reserved.
//

import Foundation

struct Movie {
    let title: String
    let releaseDate: String?
    
    init(title: String, releaseDate: String? = nil) {
        self.title = title
        self.releaseDate = releaseDate
    }
}
