//
//  BookTableViewController.swift
//  Book Shop
//
//  Created by Student on 10/4/17.
//  Copyright © 2017 mybookshop. All rights reserved.
//

import UIKit

class BookTableViewController: UITableViewController {
    var books: [Book]!

    override func viewDidLoad() {
        super.viewDidLoad()
        books = [Book]()
        
        let book1 = Book(title: "Book1", coverUrl: "", price: "10000")
        books.append(book1)
        let book2 = Book(title: "Book2", coverUrl: "", price: "20000")
        books.append(book2)
        let book3 = Book(title: "Book3", coverUrl: "", price: "30000")
        books.append(book3)
        let book4 = Book(title: "Book4", coverUrl: "", price: "40000")
        books.append(book4)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_book") as! BookTableViewCell
        let book = books[indexPath.row]
        cell.titleBookLabel.text = book.title
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailViewController = segue.destination as! DetailViewController
        let selectedCell = sender as!UITableViewCell
        let indexPath = tableView.indexPath(for: selectedCell)
        let book = books[(indexPath?.row)!]
        detailViewController.selectedBook = book
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("User click on row: ", indexPath.row)
    }

}
