//
//  NoItemsView.swift
//  TodoList
//
//  Created by Jacob Ko on 2022/01/15.
//

import SwiftUI

struct NoItemsView: View {
	// MARK: -  PROPERTY
	
	@State var isAnimate: Bool = false
	let secondaryAccentColor = Color("SecondaryAccentColor")
	
	// MARK: -  BODY
	var body: some View {
		ScrollView {
			VStack (spacing: 10){
				Text("There are no items!")
					.font(.title)
				.fontWeight(.semibold)
				
				Text("Are you a productive person? I think you should clikc the add Button and add a bunch of items to your todo list!")
					.padding(.bottom, 20)
				
				NavigationLink(destination: AddView()) {
					Text("Add Something π€")
						.foregroundColor(.white)
						.font(.headline)
						.frame(height: 55)
						.frame(maxWidth: .infinity)
						.background(isAnimate ? secondaryAccentColor : Color.accentColor)
						.cornerRadius(10)
				}
				.padding(.horizontal, isAnimate ? 30 : 50)
				.shadow(
					color: isAnimate ?secondaryAccentColor.opacity(0.7) : Color.accentColor.opacity(0.7),
					radius: isAnimate ? 30 : 10,
					x: 0,
					y: isAnimate ? 50 : 30)
				.scaleEffect(isAnimate ? 1.1 : 1.0)
				.offset(y: isAnimate ? -7 : 0)
			} //: VSTACK
			.frame(maxWidth: 400)
			.multilineTextAlignment(.center)
			.padding(40)
			.onAppear(perform: addAnimation)
		} //: SCROLL
		.frame(maxWidth: .infinity, maxHeight: .infinity)
	}
	
	// MARK: -  FUNCTION
	func addAnimation() {
		guard !isAnimate else { return } // isAnimate μ΄ true μΌλ return
		// 1.5μ΄ λ€μ delay λ λ€μμ animation μ΄ μλ νκ² ν¨
		DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
			// button μ΄ κ³μ μμ§μΌ μ μκ² 2μ΄λ§λ€ μ λ³κ²½νκΈ°
			withAnimation(
				Animation
					.easeInOut(duration: 2.0)
					.repeatForever()
			) {
				isAnimate.toggle()
			}
		}
	}
}

// MARK: -  PREVIEW
struct NoItemsView_Previews: PreviewProvider {
	static var previews: some View {
		NavigationView {
			NoItemsView()
				.navigationTitle("Title")
		}
	}
}
