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

struct View_Spacer: View {
	var body: some View {
		VStack(spacing: 0) { // #6
			HStack {
				Image(systemName: "suit.heart.fill")
					.resizable()
					.frame(width: 70, height: 70)
					.foregroundColor(.white)
				
				// #3
				Spacer()
			}
			.padding()
			.background(Color.blue)
			
			// #1
//			Spacer(minLength: 50)
			Spacer()
				.frame(height: 50)
			
			VStack {
				// #5
//				Spacer()
				Image(systemName: "suit.spade.fill")
					.resizable()
					.frame(width: 70, height: 70)
					.foregroundColor(.white)
				
				// #4
				
			}
			.padding()
			.background(Color.red)
			
			// #2
//			Spacer()
//			Spacer(minLength: 50)
			Spacer()
				.frame(height: 20)
			Spacer()
		}
	}
}

struct View_Spacer_Previews: PreviewProvider {
	static var previews: some View {
		View_Spacer()
	}
}
