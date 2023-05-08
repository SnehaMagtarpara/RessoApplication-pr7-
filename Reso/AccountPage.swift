//
//  AccountPage.swift
//  Reso
//
//  Created by R93 on 01/01/18.
//

import UIKit

class AccountPage: UIViewController,UIImagePickerControllerDelegate & UINavigationControllerDelegate {

 
    @IBOutlet weak var navigetArrow: UIButton!
    
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        img.layer.cornerRadius = img.frame.width/2
        addButton.isHidden = false
        
    
    }

    @IBAction func addPhotoButtonAction(_ sender: Any) {
        showalert()
        addButton.isHidden = true
    }
    
    
    @IBAction func navigetArrowAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "PremiumPage") as! PremiumPage
        navigationController?.pushViewController(n, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        img.image = info[.editedImage] as! UIImage
        dismiss(animated: true, completion: nil)
    }
    
    func showalert()
    {
        let alert = UIAlertController(title: "Your choise", message: "", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction.init(title: "Gallery", style: .default, handler: { _ in
            self.openGallery()
        }))
        alert.addAction(UIAlertAction.init(title: "Camera", style: .default, handler: nil))
        present(alert,animated: true,completion: nil)
    }
    func openGallery()
    {
     let gallery = UIImagePickerController()
        gallery.delegate = self
      gallery.sourceType = .photoLibrary
        gallery.allowsEditing = true
        present(gallery,animated: true,completion: nil)
    }

}
