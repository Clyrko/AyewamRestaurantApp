//
//  ImageCell.swift
//  AyewamRestaurantApp
//
//  Created by Jay A. on 3/24/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import UIKit

class ImageCell: UITableViewCell {
    
    @IBOutlet weak var menuImageView: UIImageView!
    
    func populate(with imagePath: String) {
        
        let url = URL(string: imagePath)!
        do {
            
            let data = try Data(contentsOf: url)
            menuImageView.image = UIImage(data: data)
            
        } catch {
            
            print(error)
        }
        
    }
}
