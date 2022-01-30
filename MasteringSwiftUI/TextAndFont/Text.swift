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

let longText = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

struct View_Text: View {
	var body: some View {
		VStack {
			Text("Hello, World!") // 화면에 문자열을 출력하는 가장 기본적인 뷰. 레이블이라고도 한다. 기본적으로 지역화 문자열 Localized string을 지원한다. 넣은 값이 실제로는 키로 사용된다. 여기서 파라미터로 전달하는 문자열이 키라는 말. 번들에서 Localized String을 검색하여 없으면 키 그대로를 보여준다.
				.font(.largeTitle) // 폰트크기 스탠다드로.
				.foregroundColor(.blue) // 폰트색깔. 파라미터 형식자체가 Color여서 그대로 .붙이고 사용가능.
				.background(Color.yellow) // Style로 선언. 타입생략이 불가.
			
			Text(longText)
				.frame(width: 250)
				.lineLimit(7) // 7줄까지. 넘어가면 ..으로 생략.
				.truncationMode(.tail) // 생략되는 위치 지정. tail은 마지막을 생략.
				.multilineTextAlignment(.center) // 문자열의 정렬방식 지정. 디폴트는 왼쪽이라 우측부분이 울퉁불퉁하다
				.lineSpacing(7) // 줄간의 간격.
			
			Text("Lorem ipsum dolor sit amet, consectetur")
				.font(.largeTitle)
				.frame(width: 300)
				.lineLimit(1) // modifer를 선언하지 않거나, nil을넣으면 리미트가 없다.
				.allowsTightening(true) // 너비가 부족한경우 자간을 조정하여 최대한 많은 내용을 표시한다.
				.minimumScaleFactor(0.5) // 0.0~ 1.0. 너비가 부족할때 폰트크기가 최대 50프로까지 작아진다.
		}
	}
}

struct View_Text_Previews: PreviewProvider {
	static var previews: some View {
		View_Text()
	}
}
