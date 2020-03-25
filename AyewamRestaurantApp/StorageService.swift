//
//  StorageService.swift
//  AyewamRestaurantApp
//
//  Created by Jay A. on 3/24/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import Foundation
import FirebaseStorage

class StorageService {
    
    private init() {}
    static let shared = StorageService()
    
    private let storage = Storage.storage()
    private lazy var imagesReference = storage.reference().child("images")
    
    func upload(_ image: UIImage, completion: (String) -> Void) {
        
        let imageRef = imagesReference.child("images/\(Date().timeIntervalSince1970).jpeg")
    }
    
}
