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

struct View_Stepper: View {
	@State private var quantity = 0
	
	var body: some View {
		VStack {
			Text("\(quantity)")
				.font(.system(size: 150))
			
			// #1
			// 좌측표시되는 스틩, quantity, 범위, 증감 범위, 터치가 시작되거나 떨어질때 호출. 터치가시작되면 트루가 들어옴.
			Stepper("Qty", value: $quantity)
				.padding()
			
			Stepper("Qty", onIncrement: {
				self.quantity += 1
			}, onDecrement: {
				self.quantity -= 1
			})
				.padding()
				.labelsHidden()
		}
	}
}

struct View_Stepper_Previews: PreviewProvider {
	static var previews: some View {
		View_Stepper()
	}
}
