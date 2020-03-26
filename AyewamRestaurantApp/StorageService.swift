//
//  StorageService.swift
//  AyewamRestaurantApp
//
//  Created by Jay A. on 3/24/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import FirebaseStorage
import UIKit

class StorageService {
    
    private init() {}
    static let shared = StorageService()
    
    private let storage = Storage.storage()
    private lazy var imagesReference = storage.reference().child("images")
    
    func upload(_ image: UIImage, completion: @escaping (String) -> Void) {
        
        let imageRef = imagesReference.child("images/\(UUID().uuidString).jpeg")
        
        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }
        
        imageRef.putData(imageData, metadata: nil) { (_, error) in
            
            if let unwrappedError = error {
                
                print(unwrappedError)
            } else {
                
                imageRef.downloadURL(completion: { (url, downloadError) in

                    if let unwrappedDownloadError = downloadError {
                        print(unwrappedDownloadError)
                        
                    } else if let unwrappedUrl = url {
                        
                        completion(unwrappedUrl.absoluteString)
                        
                    }
                })
            }
        }
    }
    
    func bulkUpload(_ images: [UIImage], completion: @escaping ([String]) -> Void) {
        
        let semaphore = DispatchSemaphore(value: images.count)
        
        var imagePaths = [String]()
        for image in images {
            
            semaphore.wait()
            upload(image) { (urlPath) in
                imagePaths.append(urlPath)
                semaphore.signal()
            }
        }

        completion(imagePaths)
        
    }
    
}
