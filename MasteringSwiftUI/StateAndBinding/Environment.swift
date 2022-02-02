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

struct View_Environment: View {
	
	@Environment(\.colorScheme) var currentColorScheme // 컬러스킴을 시스템 공유데이터로 사용한다. 컬러스킴에 저장되는 값이 뷰가 생성되기전에 currentColorScheme에 전달된다. 속성의 초기값을 저장하거나 initializer로 초기값 전달하면 안된다. -> colorScheme는 다크모드인지 라이트모드인지 저장되어있다.
	@Environment(\.horizontalSizeClass) var  currentHorizontalSizeClass
	
	
	var body: some View {
		List {
			HStack {
				Text("Color Scheme")
				
				Spacer()
				
				Text(currentColorScheme == .dark ? "Dark Mode" : "Light Mode")
				
			}
			.padding()
			
			HStack {
				Text("Horizontal Size Class")
				
				Spacer()
				
				Text(currentHorizontalSizeClass == .compact ? "Compact" : "Regular")
				
			}
			.padding()
		}
	}
}

struct View_Environment_Previews: PreviewProvider {
	static var previews: some View {
		View_Environment()
			.environment(\.colorScheme, .dark)
	}
}
