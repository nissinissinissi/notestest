//
//  ListViewModel.swift
//  notestest
//
//  Created by User on 28 Tishri 5783.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
    init() {
        getItems()
        
    }
    func getItems() {
        let newItems = [
            ItemModel(title: "Сделать Тестовое задание", isComplited: false),
            ItemModel(title: "Оправить сделанное задание", isComplited: true),
            ItemModel(title: "Ждать ответа", isComplited: false),]
        items.append(contentsOf: newItems)
    }
    func moveItem(from: IndexSet, to: Int) {
    items.move(fromOffsets: from, toOffset: to)
    }
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isComplited: false)
        items.append(newItem)
    }
    func updateItems(item: ItemModel)  {
        if let index = items.firstIndex(where:  { $0.id == item.id }) {
            items[index] = item.updateCompletion()
            
        }
}

}
