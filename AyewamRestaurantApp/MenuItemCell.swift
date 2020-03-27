//
//  MenuItemCell.swift
//  AyewamRestaurantApp
//
//  Created by Jay A. on 3/23/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import UIKit

class MenuItemCell: UITableViewCell {

    @IBOutlet weak var menuItemImageView: UIImageView!
    @IBOutlet weak var menuItemLabel: UILabel!
    
    var imageCache: ImageCache?
    
    func populate(with menuItem: MenuItem) {
        
        menuItemLabel.text = menuItem.title
        imageCache?.getImage(named: menuItem.mainImagePath, completion: { [weak self] (image) in
            self?.menuItemImageView.image = image
        })
        
    }
    
}
