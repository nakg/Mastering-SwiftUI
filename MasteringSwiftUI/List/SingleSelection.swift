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

struct SingleSelection: View {
	var items = AppleProduct.sampleList
	
	@State private var selected: AppleProduct? = nil
	
	var body: some View {
		VStack {
			Text("Managing Selection")
				.font(.largeTitle)
			
			Text("Selected: \(selected?.name ?? "-")")
				.font(.title)
			
			// 단일선택 리스트 초기화.
			// 데이터, 바인딩 옵셔널(타입은 상관없는 옵셔널) - 안넣으면 nil,
			// 리스트에서 특정항목을 선택하면 selected변수에 자동으로 저장된다.
			List(items, id: \.self, selection: $selected) { item in
				Button(action: {
//					self.selected = item
				}, label: {
					Text(item.name)
				})
			}
		}
		.navigationBarItems(trailing: EditButton()) // 우측상단 바아이템 추가. 이거만 바꿔도 모드가 바로 바뀌지 않는다. 여전히 일반모드.. 셀렉션으로 선택을 바인딩할때에는 리스트가 개별항목을 구분할때 사용하는 항목과 바인딩한 State variable항목이 동일해야한다.
	}
}

struct ManagingSelection_Previews: PreviewProvider {
	static var previews: some View {
		NavigationView {
			SingleSelection()
		}
	}
}
