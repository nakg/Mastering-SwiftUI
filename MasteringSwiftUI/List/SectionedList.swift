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

struct SectionedList: View {
	var items = CategorizedProduct.sampleList
	
	var body: some View {
		VStack {
			Text("Sectioned List")
				.font(.largeTitle)
			
			//			List {
			//				Section {
			//					Text("1")
			//					Text("2")
			//				}
			//
			//				Section(header: Text("Header"), footer: Text("Footer")) {
			//					Text("3")
			//					Text("4")
			//					Text("5")
			//				}
			//			}
			
			// 리스트의 섹션을 나누면서 하고자한다. 여기선 배열을 전달하지 않고, 내 부에 ForEach를 사용한다. 여기서는 스위프트의 메서드가 아니라 목록을 표시하는 "뷰" 이다. 주로 그리드 형태로 표시할때 사용.
			List {
				ForEach(items) {
					section in
					if section.footer != nil {
						Section(header: Text(section.header), footer: Text(section.footer!)) {
							ForEach(section.list) {
								item in
								Text(item.name)
							}
						}
					} else {
						Section(header: Text(section.header)) {
							ForEach(section.list) {
								item in
								Text(item.name)
							}
						}
					}
				}
			}
		}
	}
}

struct SectionedList_Previews: PreviewProvider {
	static var previews: some View {
		SectionedList()
	}
}
