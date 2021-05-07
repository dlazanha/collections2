//
//  ViewController.swift
//  SpacePhoto
//
//  Created by Diego Araujo Lazanha on 19/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var copyrightLabel: UILabel!
    let photoInfoController = PhotoInfoControler()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        title = ""
        imageView.image = UIImage(systemName: "photo.on.rectangle")
        descriptionLabel.text = ""
        copyrightLabel.text = ""
        
        photoInfoController.fetchPhotoInfo { (result) in
            DispatchQueue.main.async {
                
                switch result {
                case .success(let photoInfo):
                    self.title = photoInfo.title
                    self.descriptionLabel.text = photoInfo.description
                    self.copyrightLabel.text = photoInfo.copyright
                case .failure(let error):
                    self.title = "Error Fetching Photo"
                    self.imageView.image = UIImage(systemName:
                                                    "exclamationmark.octagon")
                    self.descriptionLabel.text =
                        error.localizedDescription
                    self.copyrightLabel.text = ""
                }
            }
        }
        
    }
}
