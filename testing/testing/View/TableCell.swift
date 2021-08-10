//
//  TableCell.swift
//  testing
//
//  Created by Kim on 10/8/2021.
//

import Foundation
import UIKit

protocol ItemListCellDelegate: class {
    func onTouchInfoButton(from cell: TableCell)
}

class TableCell: UITableViewCell{
    
    @IBOutlet private var name1: UILabel!
    @IBOutlet private var name2: UIButton!
    
    weak var delegate: ItemListCellDelegate?
    var item: Item!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        name1.text = nil
        name2.setTitle(nil, for: UIControl.State.normal)
    }
    
    func configurationTheCell(_ item: Item){
        self.item = item
        name1.text = item.name1
        name2.setTitle(item.name2, for: UIControl.State.normal)
    }
    
    @IBAction func infoButtonAction(_ sender: Any){
        self.delegate?.onTouchInfoButton(from: self)
    }
}
