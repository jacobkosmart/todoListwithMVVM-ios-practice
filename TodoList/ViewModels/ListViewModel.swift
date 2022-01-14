//
//  ListViewModel.swift
//  TodoList
//
//  Created by Jacob Ko on 2022/01/14.
//

import Foundation

class ListViewModel: ObservableObject {
	// MARK: -  PROPERTY
	
	@Published var items: [ItemModel] = []
	
	// MARK: -  INIT
	init() {
		getItems()
	}
	
	// MARK: -  FUNCTION
	
	// getItems
	func getItems() {
		let newItems = [
			ItemModel(title: "This is the first tile!", isCompleted: false),
			ItemModel(title: "This is the second", isCompleted: true),
			ItemModel(title: "This is the Third", isCompleted: false)
		]
		items.append(contentsOf: newItems)
	}
	
	// deletItems
	func deleteItem(indexSet: IndexSet) {
			items.remove(atOffsets: indexSet)
	}
	
	// moveItems
	func moveItem(from: IndexSet, to: Int) {
		items.move(fromOffsets: from, toOffset: to)
	}
	
	// addItems
	func addItem(title: String) {
		let newItem = ItemModel(title: title, isCompleted: false)
		items.append(newItem)
	}
	
	// update isCompleted
	func updateItem(item: ItemModel) {
		if let index = items.firstIndex(where: { $0.id == item.id}) {
			items[index] = item.updateCompletion()
		}
	}
}
