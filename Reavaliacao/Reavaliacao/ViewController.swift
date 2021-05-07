//
//  ViewController.swift
//  Reavaliacao
//
//  Created by Diego Araujo Lazanha on 22/03/21.
//

import UIKit

class ViewController: UIViewController {

  var  imageViewBook = UIImageView ()
    
    var pictures = [String]()

    let table: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(table)
//        table.delegate = self
        table.dataSource = self
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        table.frame = view.bounds
    }
    
    func bookPicture () {

    imageViewBook.setImage(UIImage(named: Book[0]), for: .normal)
 
    }
        
        
//    title = "Meus Livros"
//    navigationController?.navigationBar.prefersLargeTitles = true
//
//    let fm = FileManager.default
//    let path = Bundle.main.resourcePath!
//    let items = try! fm.contentsOfDirectory(atPath: path)
//
//    for item in items {
//        if item.hasPrefix("book") {
//            pictures.append(item)
//        }
//    }
}

extension ViewController: UITabBarDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "Meus Livros"
        
        return cell
    }
//    func tableView(_ tableView: UITableView, didSelectedRowAt indexPath: IndexPath){
//    tableView.deselectRow(at: IndexPath, animated = true)
//}
}
