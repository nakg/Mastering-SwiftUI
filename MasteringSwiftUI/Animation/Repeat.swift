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

struct Animation_Repeat: View {
	@State private var animating = false
	
	var finiteRepeat: Animation {
		Animation.linear(duration: 1.5).repeatCount(3, autoreverses: false) // autoreverses는 기본값이 true이다. 끝까지 한번 실행하면 다시 처음부터이다.
	}
	
	var infiniteRepeat: Animation {
		Animation.linear(duration: 1.5).repeatForever(autoreverses: false)
	}
	
	var body: some View {
		VStack {
			Image(systemName: "arrow.2.circlepath")
				.resizable()
				.foregroundColor(.blue)
				.aspectRatio(contentMode: .fit)
				.frame(width: 200, height: 200)
				.rotationEffect(.degrees(animating ? 360 : 0))
				.animation(infiniteRepeat)
			
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.onAppear { self.animating = true }
	}
}

struct Animation_Repeat_Previews: PreviewProvider {
	static var previews: some View {
		Animation_Repeat()
	}
}
