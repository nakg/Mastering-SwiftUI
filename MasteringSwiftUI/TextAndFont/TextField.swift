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

struct View_TextField: View {
	
	@State private var name: String = ""
	@State private var password: String = ""
	
	var body: some View {
		VStack {
			Text("TextField")
				.font(.largeTitle)
			
			Text("input: \(name)")
				.font(.title)
				.foregroundColor(.secondary)
			
			// Placeholder, binding text, Bool을 파라미터로 받는 클로져. 수정중이면 true가 옴., 키보드에서 리턴 누를때 호출.
			TextField("Input Something", text: $name)
				.padding() // 좌우 꽉채우면 어색..
				.textFieldStyle(RoundedBorderTextFieldStyle())
				.font(.title)
				.keyboardType(.numberPad) // 키패드타입.
				.textContentType(.username) // 계정필드라면 이렇게. 저장된 계정목록을 표시한다.
				.autocapitalization(.allCharacters) // 자동대문자.
				.disableAutocorrection(true) // 오타 자동수정 제거.
			
				
				
			SecureField("Input Password", text: $password)
				.padding()
				.textFieldStyle(RoundedBorderTextFieldStyle())
			
			Spacer()
		}
	}
}

struct View_TextField_Previews: PreviewProvider {
	static var previews: some View {
		View_TextField()
	}
}
