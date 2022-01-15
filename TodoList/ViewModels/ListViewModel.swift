//
//  ListViewModel.swift
//  TodoList
//
//  Created by Jacob Ko on 2022/01/14.
//

import Foundation

class ListViewModel: ObservableObject {
	// MARK: -  PROPERTY
	
	@Published var items: [ItemModel] = [] {
		// didSet 을 설정해줘서 items 의 값이 변경될때 마다 실행 할 코드 작성
		didSet {
			saveItems()
		}
	}
	let itemsKey: String = "items_list"
	
	// MARK: -  INIT
	init() {
		getItems()
	}
	
	// MARK: -  FUNCTION
	
	// getItems
	func getItems() {
		
		// UserDefaults 에 값이 없을 수 도 있기 때문에 optional 로 넘어와서 guard 문으로 작성
		// 2개의 변수가 공통으로 optional 이기 때문에 guard 문을 combine 해줌
		guard
			let data = UserDefaults.standard.data(forKey: itemsKey),
			let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
		else { return }
		// 받은 data 가 json 형태 이기 때문에 다시 사용할려면 decoding 해줘야 함
		// decode(바꿀 형식, from: json 형태 데이터)
		// savedItems 도 optional 이기 때문에 guard 문으로 작상
		
		self.items = savedItems // 가져온 savedItems 를 기존 items 에 넣기
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
	
	// save items to UserDefaults
	func saveItems() {
		// error 가 발샹해도 그냥 nil 로 return 되게 try? 로 하고,
		// 기존 items 를 -> json 형식으로 encode 해주기
		if let encodedData = try? JSONEncoder().encode(items) {
			// 변환된 json 데이터를 UerDefaults 에 저장하기
			UserDefaults.standard.set(encodedData, forKey: itemsKey)
		}
	}
}
