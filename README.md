# π TodoList-ios-practice

<!-- ! gif μ€ν¬λ¦°μ· -->

<img height="350" alt="αα³αα³αα΅α«αα£αΊ" src="https://user-images.githubusercontent.com/28912774/149730022-4731699a-334b-4130-b802-e5333f5d824f.gif">

## π Main Features

- To practice MVVM architecture

- Save CRUD data through USerDefaults

- ViewModel with @EnvironmentObject

- iPad, LandScape and dark mode supports

<!-- ## π Pod library -->

<!-- ### π·  -->

<!-- >  -->

<!-- #### μ€μΉ

`pod init`

```ruby

```

`pod install`
 -->

<!-- ## π Project Setup -->

## π Check Point !

### π· UI Structure

<!-- ! ppt UI structure -->

![αα³α―αα‘αα΅αα³1](https://user-images.githubusercontent.com/28912774/149744574-8738adbf-f2d4-4cb6-bdcc-7f3ac66e6512.jpeg)
![αα³α―αα‘αα΅αα³2](https://user-images.githubusercontent.com/28912774/149744593-09b01626-035f-4893-9046-d14c43e98bc0.jpeg)

### π· Model

```swift
//  ItemModel.swift
//  TodoList

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

	// model μ΄ immutable struct μ΄κΈ° λλ¬Έμ isCompleted μ λ°κΎΈκΈ° μν΄μ func λ₯Ό
	func updateCompletion() -> ItemModel {
		return ItemModel(id: id, title: title, isCompleted: !isCompleted)
	}
}

// ItemModel μ μλμμ±μΌλ‘ 2κ°κ° μμ± id κ° μλ μμ±νλκ±° 1κ°, UUID() λ‘ μλ μμ±λλκ±° 1κ°
// ItemModel(id: <#T##String#>, title: <#T##String#>, isCompleted: <#T##Bool#>)
// ItemModel(title: <#T##String#>, isCompleted: <#T##Bool#>)

```

### π· Check core codes in details

#### π [1.Create a list of Todo items](https://github.com/jacobkosmart/todoListwithMVVM-ios-practice/blob/main/MD/1.CreateList.md)

#### π [2.Custom data model for Todo items](https://github.com/jacobkosmart/todoListwithMVVM-ios-practice/blob/main/MD/2.DataModel.md)

#### π [3.Add a ViewModel with Environment Object](https://github.com/jacobkosmart/todoListwithMVVM-ios-practice/blob/main/MD/3.CreateViewModel.md)

#### π [4.Save and persist data with UserDefaults](https://github.com/jacobkosmart/todoListwithMVVM-ios-practice/blob/main/MD/4.SaveDataWithUserDefaults.md)

#### π [5.User experience and animations](https://github.com/jacobkosmart/todoListwithMVVM-ios-practice/blob/main/MD/5.UXandAnimation.md)

#### π [6.iPad, Landscape and Dark mode](https://github.com/jacobkosmart/todoListwithMVVM-ios-practice/blob/main/MD/6.iPad_Landscape_Darkmode.md)

#### π [7.Add and App Icon and Launch screen](https://github.com/jacobkosmart/todoListwithMVVM-ios-practice/blob/main/MD/7.AppIcon_LaunchScreen.md)

<!-- #### π -->

<!-- > Describing check point in details in Jacob's DevLog - https://jacobko.info/firebaseios/ios-firebase-03/ -->

<!-- ## β Error Check Point

### πΆ -->

<!-- xcode Mark template -->

<!--
// MARK: IBOutlet
// MARK: LifeCycle
// MARK: Actions
// MARK: Methods
// MARK: Extensions
-->

<!-- <img height="350" alt="αα³αα³αα΅α«αα£αΊ" src=""> -->

<!-- README ν μ€μ μ¬λ¬ screenshoot λκΈ° μμ  -->
<!-- <p>
    <img alt="Clear Spaces demo" src="../assets/demo-clear-spaces.gif" height=400px>
    <img alt="QR code scanner demo" src="../assets/demo-qr-code.gif" height=400px>
    <img alt="Example preview demo" src="../assets/demo-example.gif" height=400px>
</p> -->

---

<!-- πΆ π· π π π -->

## π Reference

Build Todo List in SwiftUI with MVVM architecture - [https://www.youtube.com/watch?v=wEf1YS4vyW8&list=PLwvDm4VfkdpheGqemblOIA7v3oq0MS30i&index=1](https://www.youtube.com/watch?v=wEf1YS4vyW8&list=PLwvDm4VfkdpheGqemblOIA7v3oq0MS30i&index=1)
