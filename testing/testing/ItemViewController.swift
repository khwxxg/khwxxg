//
//  ItemViewController.swift
//  testing
//
//  Created by Kim on 10/8/2021.
//

import Foundation
import UIKit

class ItemTableViewController: UIViewController{
    
    @IBOutlet var name1: UILabel!
    @IBOutlet var name2: UIButton!
    
    var item: Item?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let item = item {
            name1.text = item.name1
            name2.setTitle(item.name2, for: UIControl.State.normal) 
        }
    }
}
