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

struct NumberScene: View {
	var number = 0 // 전달받을 데이터 준비. 구조체라서 메모라이징 이니셜라이져가 자동으로 지정된다. 생성자로 원하는 값을 지정하면 여기에 저장되고 바디속성은 이값을 토대로 뷰를 구성시킨다.
	var color = Color.black
	
	@Environment(\.presentationMode) var presentationMode
	
	
	var body: some View {
		VStack {
			Text("\(number)")
				.font(.system(size: 200))
				.foregroundColor(.white)
			
			Button(action: {
				self.presentationMode.wrappedValue.dismiss()
			}, label: {
				Text("Dismiss")
					.foregroundColor(.white)
			})
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.background(color)
	}
}

struct NumberScene_Previews: PreviewProvider {
	static var previews: some View {
		NumberScene()
	}
}
