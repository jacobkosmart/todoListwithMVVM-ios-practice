//
//  AddView.swift
//  TodoList
//
//  Created by Jacob Ko on 2022/01/14.
//

import SwiftUI
struct AddView: View {
	// MARK: -  PROPERTY
	@Environment(\.presentationMode) var presentationMode
	@EnvironmentObject var listViewModel: ListViewModel
	@State var textFieldText: String = ""
	
	@State var alertTitle: String = ""
	@State var showAlert: Bool = false
	
	
	// MARK: -  BODY
	var body: some View {
		ScrollView {
			VStack {
				// TextField
				TextField("Type something here...", text: $textFieldText)
					.padding(.horizontal)
					.frame(height: 55)
					.background(Color(UIColor.secondarySystemBackground))
				.cornerRadius(10)
				
				// Button
				Button(action: saveButtonPressed) {
					Text("Save".uppercased())
						.frame(height: 55)
						.frame(maxWidth: .infinity)
						.font(.headline)
						.foregroundColor(.white)
						.background(Color.accentColor)
						.cornerRadius(10)
				}
			} //: VSTACK
			.padding(14)
		}
		.navigationTitle("Add and Item 🖊")
		.alert(isPresented: $showAlert, content: getAlert)
	}
	
	// MARK: -  FUNCTION
	
	// saveButton Action: listViewmodel 에 add 하고 presentaionMode dismiss()
	func saveButtonPressed() {
		if textIsAppropriate() {
			listViewModel.addItem(title: textFieldText)
			presentationMode.wrappedValue.dismiss()
		}
	}
	
	// textField 가 2글자 이하면 false return
	func textIsAppropriate() -> Bool {
		if textFieldText.count < 3 {
			alertTitle = "Your new todo item must be at least 3 characters long!! 😰"
			showAlert.toggle()
			return false
		}
		return true
	}
	
	// getAlert
	func getAlert() -> Alert {
		return Alert(title: Text(alertTitle))
	}
}

// MARK: -  PREVIEW
struct AddView_Previews: PreviewProvider {
	static var previews: some View {
		NavigationView {
			AddView()
		}
		.environmentObject(ListViewModel())
	}
}


