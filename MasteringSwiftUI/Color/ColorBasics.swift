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

struct ColorBasics: View {
	
	var body: some View {
		VStack {
			Text("Hello, SwiftUI Color!")
				.font(.largeTitle)
			
			//
			Color.blue // Color구조체는 뷰 프로토콜을 채용하고있고, 사용가능한 영역 전체를 채울 수 있다.
			Color.yellow
			
			Color(.sRGB, red: 70.0/255.0, green: 53.0/255.0, blue: 99.0/255.0, opacity: 1.0)
			
			Color("myCustomColor") // named Color. 이름을 문자열로 전달하므로 오타를 조심해야한다. 그리고 이런건 colorAsset에서 만드는게 좋다.
		}
		.background(Color(UIColor.systemBackground))
	}
}

struct ColorBasics_Previews: PreviewProvider {
	static var previews: some View {
		Group {
			ColorBasics()
				.environment(\.colorScheme, .light)
			
			ColorBasics()
				.environment(\.colorScheme, .dark)
		}
		
	}
}
