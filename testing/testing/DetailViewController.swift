//
//  DetailViewController.swift
//  testing
//
//  Created by Kim on 10/8/2021.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var name1: UILabel!
    @IBOutlet weak var name2: UILabel!
    
    var item: Item?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let item = item {
            name1.text = item.name1
            name2.text = item.name2
        }
    }
}
