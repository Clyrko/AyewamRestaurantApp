//
//  HomeMenuTableViewController.swift
//  AyewamRestaurantApp
//
//  Created by Jay A. on 3/23/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import UIKit

class HomeMenuTableViewController: UITableViewController {
    
    var menuItems = [MenuItem]()

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return menuItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuItemCell", for: indexPath)
        
        let menuItemCell = cell as? MenuItemCell
        let menuItem = menuItems[indexPath.row]
        
        menuItemCell?.populate(with: menuItem)
        
        return cell
    }
    

}
