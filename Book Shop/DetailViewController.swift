
//
//  DetailViewController.swift
//  Book Shop
//
//  Created by Student on 10/4/17.
//  Copyright © 2017 mybookshop. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    var selectedBook: Book!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = selectedBook.title
        titleLabel.text = selectedBook.title
        priceLabel.text = selectedBook.price
    }
}
