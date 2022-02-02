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

struct TwoWayConnection: View {
	@State private var value: String = "Hello"
	
	var body: some View {
		VStack(spacing: 70) {
			Text(value)
				.font(.largeTitle)
			
			TextField("Input", text: $value)
				.padding()
			
			BindingButton(value: $value)
		}
	}
}

struct BindingButton: View {
	@Binding var value: String // 다른데서 사용해야하기에 private하지 않는다.실제 저장은 State Variable이 있는 뷰가 소유하고 있으므로, 초기화까진 필요없다.
	
	var body: some View {
		Button(action: {
			self.value = "Hi~~~"
		}, label: {
			Text(value) // 바인딩은 state variable과 two way connection으로 연결되기에,TwoWayConnection의 텍스트필드를 수정해도 바로 반영된다.
		})
			.padding()
	}
}

struct TwoWayConnection_Previews: PreviewProvider {
	
	
	static var previews: some View {
		Group {
			TwoWayConnection()
			BindingButton(value: .constant("Test")) // binding을 요구하는 미리보기 화면에서, 혹은 프로토타입에서 제한적으로 constant를 쓴다.. bindingButton의 binding value를 프리뷰에선 가져올 방도가 없다. 그래서 임시로 쓰는 것.
		}
	}
}


