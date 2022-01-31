//
//  Mastering SwiftUI
//  Copyright (c) KxCoding <help@kxcoding.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import SwiftUI

struct HeaderView: View { // Header View 선언.
	let title: String
	let imageName: String
	
	var body: some View {
		HStack {
			Image(systemName: imageName)
				.font(.title)
			
			Text(title)
				.font(.title)
		}
		.frame(height: 60)
	}
}

struct FooterView: View {
	let title: String
	let imageName: String
	
	var body: some View {
		HStack {
			Text(title)
				.font(.title)
			Image(systemName: imageName)
				.font(.title)
		}
		.frame(height: 40)
	}
}

struct CustomizingList: View {
	
	
	var body: some View {
		VStack {
			Text("Customizing List")
				.font(.largeTitle)
				.listRowBackground(Color.red)
			
			List {
				Section(header: HeaderView(title: "Lorem Ipsum", imageName: "star"), footer: FooterView(title: "Footer", imageName: "star")) {
					Text("Hello, List!")
					Text("List Row Insets")
						.listRowInsets(.init(top: 100, leading: 100, bottom: 0, trailing: 0)) // 내부 rowinset의 우선수위가 높다.
					Text("List Row Background")
						.listRowBackground(Color.yellow) // view를 파라미터로 받는다. 칼라도 뷰의 프로토콜을 받지.
				}
				.listRowInsets(.init(top: 0, leading: 60, bottom: 0, trailing: 0)) // 섹션별로도가능, 개별로도 가능, 단 리스트외부나 리스트 직접 적용은 불가하다. 리스트 내부에서만 먹는 modifier이다.
				.listRowBackground(Color.yellow)
				
				Section() {
					Text("One")
					Text("Two")
				}
			}
			.listStyle(GroupedListStyle()) // groupstyle 적용.
			
		}
	}
}

struct CustomizingList_Previews: PreviewProvider {
	static var previews: some View {
		CustomizingList()
	}
}
