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

struct SpringAnimation: View {
	@State private var position = CGPoint.zero
	
	var body: some View {
		VStack {
			Circle()
				.foregroundColor(.blue)
				.frame(width: 50, height: 50)
				.position(position)
				.offset(x: 50, y: 50)
				.animation(.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0)) // 스프링 지속시간, 제동력 - 없으면 무한히 튕긴다.., 이건 스프링2개 이상일때만 의미있다..
			
			Spacer()
			
			Button(action: {
				self.position = self.position == .zero ? CGPoint(x: 300, y: 500) : .zero
			}, label: {
				Text("Animate")
			})
				.padding()
		}
	}
}

struct SpringAnimation_Previews: PreviewProvider {
	static var previews: some View {
		SpringAnimation()
	}
}
