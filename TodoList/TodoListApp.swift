//
//  TodoListApp.swift
//  TodoList
//
//  Created by Jacob Ko on 2022/01/14.
//

import SwiftUI


/*
 
 MVVM Architecture
 
 Model - Data point
 View - UI
 ViewModel - manages Models for View

 */

@main
struct TodoListApp: App {
	
	// StateObject
	@StateObject var listViewModel: ListViewModel = ListViewModel()
	
	var body: some Scene {
		WindowGroup {
			NavigationView {
				ListView()
			} //: NAVIGATION
			.environmentObject(listViewModel)
		}
	}
}
