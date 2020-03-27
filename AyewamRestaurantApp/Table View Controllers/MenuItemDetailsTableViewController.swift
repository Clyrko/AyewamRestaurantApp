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
    var imageCache: ImageCache!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = tableView.bounds.width
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuImagePaths.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath)
        
        let imageCell = cell as? ImageCell
        imageCell?.imageCache = imageCache
        let imagePath = menuImagePaths[indexPath.row]
        imageCell?.populate(with: imagePath)
        
        return cell
    }
    
    
}


