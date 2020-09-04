//
//  ViewController.swift
//  Detect who
//
//  Created by suriya on 04/09/20.
//  Copyright © 2020 suriya. All rights reserved.
//

import UIKit
import CoreImage


class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate{

    @IBOutlet weak var myUIimageView: UIImageView!
    
    @IBOutlet weak var myUItextView: UITextView!
    
    @IBAction func ImportButton(_ sender: Any) {
        //create image picker
        let imagepicker=UIImagePickerController()
        imagepicker.delegate = self
        imagepicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        
        //display the image
        self.present(imagepicker,animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            myUIimageView.image = image
        }
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

