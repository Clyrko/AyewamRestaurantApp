//
//  MenuItem.swift
//  AyewamRestaurantApp
//
//  Created by Jay A. on 3/23/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import Foundation

struct MenuItem: Decodable {
    
    let mainImagePath: String
    let title: String
    let otherImagePaths: [String]
    
    var allImagePaths: [String] { return [mainImagePath] + otherImagePaths }
    
    
}
