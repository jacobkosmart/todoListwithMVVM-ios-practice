# 📔 TodoList-ios-practice

<!-- ! gif 스크린샷 -->

## 📌 Main Features

- To practice MVVM architecture

- Save CRUD data through USerDefaults

- ViewModel with @EnvironmentObject

- iPad, LandScape and dark mode supports

<!-- ## 👉 Pod library -->

<!-- ### 🔷  -->

<!-- >  -->

<!-- #### 설치

`pod init`

```ruby

```

`pod install`
 -->

## 📌 Project Setup

-

## 🔑 Check Point !

### 🔷 UI Structure

<!-- ! ppt UI structure -->

### 🔷 Model

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

	// model 이 immutable struct 이기 때문에 isCompleted 을 바꾸기 위해서 func 를
	func updateCompletion() -> ItemModel {
		return ItemModel(id: id, title: title, isCompleted: !isCompleted)
	}
}

// ItemModel 에 자동완성으로 2개가 생성 id 가 자동 생성하는거 1개, UUID() 로 자동 완성되는거 1개
// ItemModel(id: <#T##String#>, title: <#T##String#>, isCompleted: <#T##Bool#>)
// ItemModel(title: <#T##String#>, isCompleted: <#T##Bool#>)

```

### 🔷 Check core codes in details

### 🔷 User experience and animations

```swift

```

### 🔶

```swift

```

### 🔶

```swift

```

### 🔷 iPad, Landscape and Dark mode

```swift

```

### 🔷 Add and App Icon and Launch screen

```swift

```

#### 👉 [1.Create a list of Todo items]()

#### 👉 [2.Custom data model for Todo items]()

#### 👉 [3.Add a ViewModel with Environment Object]()

#### 👉 [4.Save and persist data with UserDefaults]()

#### 👉 [5.User experience and animations]()

#### 👉 [6.iPad, Landscape and Dark mode]()

<!-- #### 👉 -->

<!-- > Describing check point in details in Jacob's DevLog - https://jacobko.info/firebaseios/ios-firebase-03/ -->

<!-- ## ❌ Error Check Point

### 🔶 -->

<!-- xcode Mark template -->

<!--
// MARK: IBOutlet
// MARK: LifeCycle
// MARK: Actions
// MARK: Methods
// MARK: Extensions
-->

<!-- <img height="350" alt="스크린샷" src=""> -->

<!-- README 한 줄에 여러 screenshoot 놓기 예제 -->
<!-- <p>
    <img alt="Clear Spaces demo" src="../assets/demo-clear-spaces.gif" height=400px>
    <img alt="QR code scanner demo" src="../assets/demo-qr-code.gif" height=400px>
    <img alt="Example preview demo" src="../assets/demo-example.gif" height=400px>
</p> -->

---

<!-- 🔶 🔷 📌 🔑 👉 -->

## 🗃 Reference
