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

struct View_Alert: View {
	@State private var result = ""
	
	@State private var showAlert = false // 경고창을 표시하기 위해서는, 먼저 state variable이 필요하다.
	
	
	var body: some View {
		VStack {
			Text(result)
				.font(.largeTitle)
			
			Button(action: {
				self.showAlert.toggle()
			}, label: {
				Text("Show Alert")
			})
				.padding()
				.alert(isPresented: $showAlert, content: { // StateVariable이 true일때에만 경고창이 뜬다. 여기서 취소 눌르면 자동으로 false로 토글되기까지 한다.
					//					Alert(title: Text("Alert"), message: Text("Message"), dismissButton: .default(Text("OK")))
					Alert(title: Text("Alert"), message: Text("Message"), primaryButton: .destructive(Text("Delete"), action: {
						self.result = "Delete"
					}), secondaryButton: .cancel({
						self.result = "Cancelled"
					}))
				})
		}
	}
}

struct Alert_Previews: PreviewProvider {
	static var previews: some View {
		View_Alert()
	}
}
