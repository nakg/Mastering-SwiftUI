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

struct EditMode: View {
	@State private var items = AppleProduct.sampleList  // Stete 삭제
	
	var body: some View {
		VStack {
			List {
				ForEach(items) { item in
					Text(item.name)
				}
				.onDelete { (rows) in // indexset을 받는다. 삭제를 누르면 하단 이 클로져가 실행된다. 배열은 state로 선언되어있기에 배열을 바인딩하고있는 리스트 역시 업데이트된다.
					self.items.remove(atOffsets: rows)
				}
				.onMove(perform: move)
			}
			
		}
		.navigationBarTitle("Edit Mode")
		.navigationBarItems(trailing: EditButton())
	}
	
	func move(from: IndexSet, to: Int) { // indexset과 이동할 index를 파라미터로 받는 클로져를 구현한 함수.
		items.move(fromOffsets: from, toOffset: to)
	}
}

struct EditMode_Previews: PreviewProvider {
	static var previews: some View {
		NavigationView {
			EditMode()
		}
	}
}
