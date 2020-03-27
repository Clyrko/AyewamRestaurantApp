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
    
    let firestore = FirestoreService.shared
    
    let imageCache = ImageCache()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        firestore.configure()
        
        tableView.rowHeight = (tableView.bounds.width * 8) / 15

        firestore.listen { [weak self] (menuItems) in
            self?.menuItems = menuItems
            self?.tableView.reloadData()
         }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return menuItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuItemCell", for: indexPath)
        
        let menuItemCell = cell as? MenuItemCell
        menuItemCell?.imageCache = imageCache
        let menuItem = menuItems[indexPath.row]
        
        menuItemCell?.populate(with: menuItem)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let newMenuItemVC = segue.destination as? NewMenuItemViewController {
            
            newMenuItemVC.firestore = firestore
            
        } else if let menuItemDetailsVC = segue.destination as? MenuItemDetailsTableViewController, let menuItem = sender as? MenuItem {
            
            menuItemDetailsVC.menuItem = menuItem
            menuItemDetailsVC.imageCache = imageCache
            
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let menuItem = menuItems[indexPath.row]
        performSegue(withIdentifier: "segue", sender: menuItem)
    }
    
}
