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

class SharedList: ObservableObject { // 이렇게 선언된 클래스를 프로토콜 이름처럼 ObservableObject라고 부른다. 이제 이름처럼 감시가 가능한 객체가 되었다.
	var title = "" // 값이 바뀌어도 새로운 값을 방출하지 않는다. 이 속성을 바꾸는 것만으로는 뷰가 업데이트 되지 않는다.
	@Published var list = [String]() // 속성앞에 @Published를 추가하면 배열에 새로운요소가 추가되거나 삭제되는 시점마다 새로운 배열을 방출한다. 이 리스트를 리스트나 포이치에서 사용하면 항사 새로운 목록이 된다.
}

struct ObservableList: View {
	@State private var value: String = ""
	
	@ObservedObject var sharedList = SharedList() // class instance를 저장. 이렇게 선언하면 인스턴스에 포함된 publsihed속성이 새로운 값을 방출할 때 마다 뷰를 자동으로 업데이트한다.
	
	var body: some View {
		VStack {
			Text(sharedList.title)
				.font(.largeTitle)
			
			HStack {
				TextField("Input", text: $value)
					.textFieldStyle(RoundedBorderTextFieldStyle())
					.padding()
				
				Button(action: {
					self.sharedList.title = "Observable List"
					self.sharedList.list.insert(self.value, at: 0)
					self.value = ""
					
				}, label: {
					Text("Add To List")
				})
					.padding()
				
			}
			
			List(sharedList.list, id: \.self) { item in
				Text(item)
				
			}
	
			Spacer()
		}
		.padding()
	}
}

struct ObservableList_Previews: PreviewProvider {
	static var previews: some View {
		ObservableList()
	}
}
