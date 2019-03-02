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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.libraryTableView.dataSource = dataService
        self.libraryTableView.delegate = dataService
    }


}

