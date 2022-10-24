//
//  ItemModel.swift
//  notestest
//
//  Created by User on 28 Tishri 5783.
//

import Foundation
struct ItemModel: Identifiable {
    var id: String = UUID().uuidString
    let title: String
    let isComplited: Bool
    init(id: String = UUID().uuidString, title: String, isComplited: Bool) {
        self.id = id
        self.title = title
        self.isComplited = isComplited
    }
    func updateCompletion()  -> ItemModel {
        return ItemModel(id: id, title: title, isComplited: !isComplited)
    }
}
