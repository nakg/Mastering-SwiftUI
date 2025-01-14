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

struct ColorScene: View {
	@Binding var showSheet: Bool // State가 아닌 바인딩.다른뷰로부터 바인딩을 받을 때에는 바인딩 속성으로 선언한다.
	var color = Color.black
	
	var body: some View {
		VStack {
			Spacer()
			
			Image(systemName: "smiley")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 200, height: 200)
				.foregroundColor(.white)
			
			Spacer()
			
			Button(action: {
				self.showSheet = false // 바인딩받은 변수를 false처리.
			}, label: {
				Text("Close")
					.font(.title)
			})
				.padding()
				.foregroundColor(.white)
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.background(color)
		.navigationBarTitle("ColorScene")
	}
}

struct ColorSheet_Previews: PreviewProvider {
	static var previews: some View {
		ColorScene(showSheet: .constant(false))
	}
}
