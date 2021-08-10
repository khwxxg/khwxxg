//
//  Item.swift
//  testing
//
//  Created by Kim on 10/8/2021.
//

import Foundation

struct Item {
    let name1: String
    let name2: String
    let name3: String
}

extension Item{
    static func createItems() -> [Item]{
        return [
            Item(name1: "Kimm", name2: "Wong", name3: "Developer"),
            Item(name1: "John", name2: "Chan", name3: "Developer"),
            Item(name1: "Tomm", name2: "Wang", name3: "Developer"),
            Item(name1: "Sean", name2: "Chen", name3: "Developer"),
            Item(name1: "Kong", name2: "Kong", name3: "Developer"),
            Item(name1: "Pong", name2: "Pong", name3: "Developer"),
            Item(name1: "Bond", name2: "Jams", name3: "Developer")
        ]
    }
}
