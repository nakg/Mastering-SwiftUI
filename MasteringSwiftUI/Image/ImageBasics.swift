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

struct ImageBasics: View {
	var body: some View {
		VStack {
			Text("Image")
				.font(.title)
			
			//
			Image("swiftui-logo") // asset파일에 있다.
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 200, height: 300)
			
			Image(systemName: "star") // SF Symbol 프로그램에 있는 시스템 심볼. 애플에서 제공.
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 50, height: 100)
				.foregroundColor(.yellow)
			
			HStack {
				Image(systemName: "person.crop.circle")
					.font(.largeTitle) // frame으로 크기를 잡는게아니라 라지타이틀에 크기를 맞춘다. 이러면 resizalble도 없다.
				
				Text("Profile")
					.font(.largeTitle)
			}
			.padding()
		
			
			
			
			Spacer()
		}
	}
}

struct ImageBasics_Previews: PreviewProvider {
	static var previews: some View {
		ImageBasics()
	}
}
