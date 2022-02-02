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


class SharedObjectList: ObservableObject {
	@Published var list = [String]()
}


struct View_EnvironmentObject: View {
	@State private var value: String = ""
	@EnvironmentObject var sharedList: SharedObjectList // 초기값을 셋팅하면안된다. 자동으로 저장된다. 시스템공유데이터와달리 우리가 직접 인스턴스를 생성하고 뷰와 연결해야한다.
	
	var body: some View {
		VStack {
			
			HStack {
				TextField("Input", text: $value)
					.textFieldStyle(RoundedBorderTextFieldStyle())
					.padding()
				
				Button(action: {
					self.sharedList.list.append(self.value)
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

struct View_EnvironmentObject_Previews: PreviewProvider {
	static var previews: some View {
		View_EnvironmentObject()
			.environmentObject(SharedObjectList()) // 직접 준다. 여기에서 사용하고있는 environmentObject는 파라미터로 전달된 인스턴스를 특별한 공간에 저장하고 뷰와 연결해준다. 이렇게 연결된 데이터는 child view나 연결된 다른뷰로 자동으로 전달된다. 이런 특징떄문에 의존성 주입에 자주 활용된다.
	}
}
