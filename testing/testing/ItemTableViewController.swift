//
//  ItemViewController.swift
//  testing
//
//  Created by Kim on 10/8/2021.
//

import Foundation
import UIKit

class ItemTableViewController: UITableViewController{
    
    
    var itemList = Item.createItems()
    let identifier: String = "tableCell"
    var selectedItem: Item?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: Segue Method
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "itemDetail",
//            let indexPath = tableView?.indexPathForSelectedRow,
            let destinationViewController: DetailViewController = segue.destination as? DetailViewController {
//            destinationViewController.item = itemList[indexPath.row]
            destinationViewController.item = selectedItem
        }
    }
}

extension ItemTableViewController{
    func setupUI(){
        tableView.reloadData()
    }
}

extension ItemTableViewController{
    
    //MARK: UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TableCell{        cell.configurationTheCell(itemList[indexPath.row])
            cell.delegate = self
            return cell
        }
        return UITableViewCell()
    }
}

extension ItemTableViewController: ItemListCellDelegate{
    func onTouchInfoButton(from cell: TableCell) {
        self.selectedItem = cell.item
        self.performSegue(withIdentifier: "itemDetail", sender: self)
    }
}
