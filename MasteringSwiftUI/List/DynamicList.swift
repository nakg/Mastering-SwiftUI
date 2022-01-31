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

struct DynamicList: View {
	
	var items = Product.sampleList // Sample date배열 저장
	var body: some View {
		VStack {
			Text("Dynamic List")
				.font(.largeTitle)
			
			// List 추가.
			// 배열 전달,
			// Product가 Identifiable 프로토콜을 채용해야만 가능하다. 리스트는 배열에 포함되어있는 데이터를 구분할 수 있어야하는데 지금 프로덕트 구조체는 이게 불가하다. -> 1. Identifiable을 구현하거나, 2. 특정 속성을 지정해서 이 속성을 기준으로 구분하게 하여야한다.
			// id는 기준으로 사용할 속성. 이걸 기준으로 product instance를 구분한다.
			List(items, id: \.name, rowContent: { item in
				Text(item.name)
			})
		}
	}
}

struct DynamicList_Previews: PreviewProvider {
	static var previews: some View {
		DynamicList()
	}
}
