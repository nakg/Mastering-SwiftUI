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

struct Nav_Sheet: View {
	@State private var statusMessage = ""
	@State private var showSheet = false
	
	
	var body: some View {
		VStack {
			Text(statusMessage)
				.font(.largeTitle)
			
			Button(action: {
				self.showSheet.toggle()
			}, label: {
				Text("Show Sheet")
			})
				.padding()
				.sheet(isPresented: $showSheet, onDismiss: { // sheet를 닫은 다음에 호출되는 클로져
					self.statusMessage = "Done"
				}, content: { // view를 리턴한다.
//					NumberScene(number: 0, color: Color.blue) // Modal에서 데이터를 넘기는부분. 이런식으로 생성자를 호출하고 데이터를 넘긴다.
					ColorScene(showSheet: self.$showSheet, color: Color.blue) // 첫번째 파라미터로 stateVariable을 전달하면, 여기에서 전달한 속성이 ColorScene의 바인딩된 속성에 저장된다. 이는 바인딩속성이기에 복사본이 아니라 동일한 원본이 저장된다.
				})
		}
		.navigationBarTitle("Sheet")
	}
}

struct Nav_Sheet_Previews: PreviewProvider {
	static var previews: some View {
		NavigationView {
			Nav_Sheet()
		}
	}
}
