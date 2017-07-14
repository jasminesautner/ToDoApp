//
//  ViewController.swift
//  ToDoApp
//
//  Created by Alick C Zhang on 7/10/17.
//  Copyright © 2017 Alick C Zhang. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    override func

}

