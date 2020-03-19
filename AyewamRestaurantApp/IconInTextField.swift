//
//  IconInTextField.swift
//  AyewamRestaurantApp
//
//  Created by Jay A. on 3/19/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import UIKit

@IBDesignable

class IconInTextField: UITextField {

    @IBInspectable var leftImage: UIImage? {
        
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var leftPadding: CGFloat = 0 {
        didSet {
            
            updateView()
        }
    }

    func updateView() {
        
        if let image = leftImage {
            
            leftViewMode = .always
            
            let imageView = UIImageView(frame: CGRect(x: leftPadding, y: 0, width: 20, height: 20))
            imageView.image = image
            
            let width = leftPadding + 20
            
            let view = UIView(frame: CGRect(x: 0, y: 0, width: width, height: 20))
            view.addSubview(imageView)
            
            leftView = view
        } else {
            
            leftViewMode = .never
        }
    }
}
