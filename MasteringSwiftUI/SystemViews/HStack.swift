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

struct View_HStack: View {
   var body: some View {
	   HStack(alignment: .top, spacing: 0.0) { // 내부 요소들끼리의 수평여백을 0으로.
		   Image(systemName: "suit.heart.fill")
			 .resizable()
			 .frame(width: 50, height: 50)
		 .foregroundColor(.red)
		   
		   Image(systemName: "suit.club.fill")
			  .resizable()
			  .frame(width: 100, height: 100)
			  .foregroundColor(.black)

		   Image(systemName: "suit.spade.fill")
			  .resizable()
			  .frame(width: 50, height: 50)
			  .foregroundColor(.black)

		   Image(systemName: "suit.diamond.fill")
			  .resizable()
			  .frame(width: 50, height: 50)
			  .foregroundColor(.red)
	   }
	   .frame(maxWidth: .infinity, maxHeight: .infinity) // frame modifier 추가.
   }
}

struct View_HStack_Previews: PreviewProvider {
   static var previews: some View {
      View_HStack()
   }
}
