//
//  NewMenuItemViewController.swift
//  AyewamRestaurantApp
//
//  Created by Jay A. on 3/24/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import UIKit

class NewMenuItemViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var mainImageButton: UIButton!
    @IBOutlet weak var firstImageButton: UIButton!
    @IBOutlet weak var secondImageButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    
    private var currentButton: UIButton?
    
    var firestore: FirestoreService!
    let storage = StorageService.shared
    
    private lazy var pickerController: UIImagePickerController = {
        
        let picker = UIImagePickerController()
        
        picker.sourceType = .photoLibrary
        
        return picker
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pickerController.delegate = self
        
    }
    
    @IBAction func dismissKeyboard() {
        
        titleTextField.endEditing(true)
    }
    
    @IBAction func setPhoto(_ sender: UIButton) {
        
        currentButton = sender
        present(pickerController, animated: true)
    }
    
    @IBAction func saveMenuItem() {
        
        
        
    }
    
}

extension NewMenuItemViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true)
        guard let image = info[.originalImage] as? UIImage else { return }
        currentButton!.setBackgroundImage(image, for: .normal)
    }
}
