//
//  MenuItemDetailsTableViewController.swift
//  AyewamRestaurantApp
//
//  Created by Jay A. on 3/24/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import UIKit

class MenuItemDetailsTableViewController: UITableViewController {
    
    var menuItem: MenuItem!
    var menuImagePaths: [String] { return menuItem.allImagePaths }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuImagePaths.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath)
        
        
        
        return cell
    }
    
    
}


