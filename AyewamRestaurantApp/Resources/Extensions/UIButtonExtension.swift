//
//  UIButtonExtension.swift
//  AyewamRestaurantApp
//
//  Created by Jay A. on 3/18/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import UIKit

extension UIButton {
    
    
    func borderedButton() {
        layer.borderWidth = 2
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = 5
        tintColor = Theme.lightAccent
        
    }
    
    func solidButton() {
        
        backgroundColor = Theme.tint
        tintColor = UIColor.white
        layer.cornerRadius = 5
        
    }
    
    func appleButton() {
        
        backgroundColor = UIColor.black
        layer.cornerRadius = 5
        tintColor = UIColor.white
        
    }
}
