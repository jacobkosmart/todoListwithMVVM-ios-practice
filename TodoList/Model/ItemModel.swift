//
//  ItemModel.swift
//  TodoList
//
//  Created by Jacob Ko on 2022/01/14.
//

import Foundation

// Immutable Struct
struct ItemModel: Identifiable {
	let id: String
	let title: String
	let isCompleted: Bool
	
	init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
		self.id = id
		self.title = title
		self.isCompleted = isCompleted
	}
	
	// model 이 immutable struct 이기 때문에 isCompleted 을 바꾸기 위해서 func 를
	func updateCompletion() -> ItemModel {
		return ItemModel(id: id, title: title, isCompleted: !isCompleted)
	}
}

// ItemModel 에 자동완성으로 2개가 생성 id 가 자동 생성하는거 1개, UUID() 로 자동 완성되는거 1개
// ItemModel(id: <#T##String#>, title: <#T##String#>, isCompleted: <#T##Bool#>)
// ItemModel(title: <#T##String#>, isCompleted: <#T##Bool#>)
