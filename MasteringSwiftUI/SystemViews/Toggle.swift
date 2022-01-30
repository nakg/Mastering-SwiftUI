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

struct View_Toggle: View {
	@State private var isOn = false // Togle은 두가지 상태를 전달한다. 항상 이런형태의 State Variable이 필요하다.
	
	var body: some View {
		VStack(alignment: .center, spacing: 30) {
			Image(systemName: isOn ? "lightbulb.fill" : "lightbulb")
				.resizable()
				.foregroundColor(isOn ? .yellow : .gray)
				.aspectRatio(contentMode: .fit)
				.frame(width: 300, height: 300)
			
			// #1
			//			Toggle("Toggle Switch", isOn: $isOn) // 토글은 상태를 바꿀때마다 isOn을 토글한다. State Variable이 바뀌면 전체 UI의 바디가 다시 호출된다. 결국 이미지가 현재상태에 맞게 다시 바뀐다.
			VStack(spacing: 30) {
				Text("Toggle Switch")
				Toggle(isOn: $isOn, label: { // toggle스위치 좌측에 올 부분을 클로져로 전달.
					Text("Toggle Switch")
				})
					.labelsHidden()
//				.padding()
			} // 기본패딩 추가.
		}
	}
}

struct View_Toggle_Previews: PreviewProvider {
	static var previews: some View {
		View_Toggle()
	}
}
