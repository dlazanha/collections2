//
//  BookFormTableViewController.swift
//  FavoriteBooks
//
//  Created by Diego Araujo Lazanha on 16/03/21.
//

import UIKit

class BookFormTableViewController: UITableViewController {
    
    var book: Book?
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var genreTextField: UITextField!
    @IBOutlet weak var lengthTextField: UITextField!
    @IBAction func saveButton(_ sender: Any) {
    }

        //copiado book form view
        
        @IBAction func saveButtonTapped(_ sender: Any) {
            guard let title = titleTextField.text,
                  let author = authorTextField.text,
                  let genre = genreTextField.text,
                  let length = lengthTextField.text else {return}
            
            book = Book(title: title, author: author, genre: genre, length: length)
            performSegue(withIdentifier: "UnwindToBookTable", sender: self)
        }
        init?(coder: NSCoder, book: Book?) {
            self.book = book
            super.init(coder: coder)
        }
        
        required init?(coder: NSCoder) {
            self.book = nil
            super.init(coder: coder)
        }
        
        func updateView() {
            guard let book = book else {return}
            
            titleTextField.text = book.title
            authorTextField.text = book.author
            genreTextField.text = book.genre
            lengthTextField.text = book.length
        }
    }
    // Uncomment the following line to preserve selection between presentations
            // self.clearsSelectionOnViewWillAppear = false
            
            // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
            // self.navigationItem.rightBarButtonItem = self.editButtonItem
            
        
        
        // MARK: - Table view data source
        
        //    override func numberOfSections(in tableView: UITableView) -> Int {
        //        // #warning Incomplete implementation, return the number of sections
        //        return 0
        //    }
        //
        //    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //        // #warning Incomplete implementation, return the number of rows
        //        return 0
        //    }
        
        /*
         override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
         
         // Configure the cell...
         
         return cell
         }
         */
        
        /*
         // Override to support conditional editing of the table view.
         override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
         // Return false if you do not want the specified item to be editable.
         return true
         }
         */
        
        /*
         // Override to support editing the table view.
         override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
         if editingStyle == .delete {
         // Delete the row from the data source
         tableView.deleteRows(at: [indexPath], with: .fade)
         } else if editingStyle == .insert {
         // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
         }
         }
         */
        
        /*
         // Override to support rearranging the table view.
         override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
         
         }
         */
        
        /*
         // Override to support conditional rearranging of the table view.
         override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
         // Return false if you do not want the item to be re-orderable.
         return true
         }
         */
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    

