//
//  FirestoreService.swift
//  AyewamRestaurantApp
//
//  Created by Jay A. on 3/24/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import Foundation
import FirebaseFirestore

class FirestoreService {
    
    private init() {}
    private(set) static var shared: FirestoreService!
    
    private let database = Firestore.firestore()
    private lazy var menuItemsReference = database.collection("menuItems")
    
    func configure() {
        
        FirestoreService.shared = FirestoreService()
    }
    
    func save(_ menuItem: MenuItem, completion: @escaping (Result<Bool, NSError>) -> Void) {
        
        menuItemsReference.addDocument(data: ["mainImagePath" : menuItem.mainImagePath,
                                              "title" : menuItem.title,
                                              "otherImagePaths" : menuItem.otherImagePaths.enumerated()
        ]) { (error) in
            
            if let unwrappedError = error {
                completion(.failure(unwrappedError as NSError))
            } else {
                completion(.success(true))
            }
        }
    }
    
    func listen(completion: @escaping ([MenuItem]) -> Void) {
        
        menuItemsReference.addSnapshotListener { (snapshot, error) in
            
            guard let unwrappedSnapshot = snapshot else { return  }
            
            let documents = unwrappedSnapshot.documents
            
            var menuItems = [MenuItem]()
            for document in documents {
                
                let documentData = document.data()
                
                guard
                    let mainImagePath = documentData["mainImagePath"] as? String,
                    let title = documentData["title"] as? String,
                    let otherImagePathsDict = documentData["otherImagePaths"] as? [Int: String]
                
                else { continue }
                    
                let otherImagePaths = otherImagePathsDict.map { $0.value }
                
                let menuItem = MenuItem(mainImagePath: mainImagePath,
                                        title: title,
                                        otherImagePaths: otherImagePaths)
                
                menuItems.append(menuItem)
            }
            completion(menuItems)
        }
    }
}
