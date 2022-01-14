//
//  ListRowView.swift
//  TodoList
//
//  Created by Jacob Ko on 2022/01/14.
//

import SwiftUI

struct ListRowView: View {
	// MARK: -  PROPERTY
	
	let item: ItemModel
	
	// MARK: -  BODY
	var body: some View {
		HStack {
			// checked 마크가 true 일때 false 일때 각각 다르게 적용하기
			Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
				.foregroundColor(item.isCompleted ? .green : .red)
			Text(item.title)
			Spacer()
		}
		.font(.title2)
		.padding(.vertical, 8)
	}
}

// MARK: -  PREVIEW
struct ListRowView_Previews: PreviewProvider {
	
	static var item1 = ItemModel(title: "First item!", isCompleted: false)
	static var item2 = ItemModel(title: "Second item!", isCompleted: true)
	
	static var previews: some View {
		Group {
			ListRowView(item: item1)
			ListRowView(item: item2)
		}
		.previewLayout(.sizeThatFits)
	}
}
