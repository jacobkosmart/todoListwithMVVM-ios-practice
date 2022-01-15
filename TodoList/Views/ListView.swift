//
//  ListView.swift
//  TodoList
//
//  Created by Jacob Ko on 2022/01/14.
//

import SwiftUI

struct ListView: View {
	
	// MARK: -  PROPERTY

	// Environment Object
	@EnvironmentObject var listViewModel: ListViewModel
	
	// MARK: -  BODY
	var body: some View {
		ZStack {
			if listViewModel.items.isEmpty {
				NoItemsView()
					.transition(AnyTransition.opacity.animation(.easeIn))
			} else {
				// list loop
				List {
					ForEach(listViewModel.items) { item in
						ListRowView(item: item)
						// toggle 시 !isCompleted 가 되게 하는 logic
							.onTapGesture {
								withAnimation(.linear) {
									listViewModel.updateItem(item: item)
								}
							}
					}
					// delete list
					.onDelete(perform:listViewModel.deleteItem)
					// move list
					.onMove(perform: listViewModel.moveItem)
				}
				.listStyle(PlainListStyle())
			} //: LIST
		} //: ZSTACK
		.navigationTitle("Todo List 📝")
		// trailing 에 ADD 버튼 을 클릭하면 AddView() 로 이동
		.navigationBarItems(
			leading: EditButton(),
			trailing: NavigationLink("ADD", destination: AddView())
		)
	}
}

// MARK: -  PREVIEW
struct ListView_Previews: PreviewProvider {
	static var previews: some View {
		NavigationView {
			ListView()
				.preferredColorScheme(.dark)
		} //: NAVIGATION
		.environmentObject(ListViewModel())
	}
}


