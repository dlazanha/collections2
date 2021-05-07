//
//  ViewController.swift
//  PhotoFrameViewCode
//
//  Created by Diego Araujo Lazanha on 23/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    let imageView: UIImageView = {
        let    someImage = UIImageView ()
        someImage.image = UIImage(named: "dry martini")
        someImage.translatesAutoresizingMaskIntoConstraints = false
        return someImage
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .red
        view.addSubview(imageView)
        imageViewSetupConstrains()
    }
    
    // contrains para a image
    // como esta ancorada no X e no Y se rodar o devide ele fica ancorado
    func imageViewSetupConstrains () {
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 400).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 400).isActive = true
        
    }
    
}

