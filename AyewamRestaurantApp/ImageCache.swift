//
//  ImageCache.swift
//  AyewamRestaurantApp
//
//  Created by Jay A. on 3/27/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import UIKit

class ImageCache: NSCache<NSString, AnyObject> {
    
    func getImage(named imageName: String, completion: @escaping (UIImage?) -> Void) {
        
        if let image = object(forKey: imageName as NSString) as? UIImage {
            completion(image)
            
            
        } else {
            
            let url = URL(string: imageName)!
            do {
                
                let data = try Data(contentsOf: url)
                if let image = UIImage(data: data) {
                    setObject(image, forKey:imageName as NSString)
                    completion(image)
                }
  
            } catch {
                
                print(error)
                completion(nil)
                
            }
        }
    }
}
