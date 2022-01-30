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

struct View_Slider: View {
	@State private var r = 0.0
	@State private var g = 0.0
	@State private var b = 0.0
	
	var color: Color {
		Color(red: r / 255, green: g / 255, blue: b / 255)
	}
	
	var body: some View {
		VStack {
			Image(systemName: "smiley.fill")
				.resizable()
				.foregroundColor(color)
				.frame(width: 250, height: 250)
			
			HStack {
				Text("R")
				Slider(value: $r, in: 0 ... 255, step: 1, label: {
					EmptyView()
				}, onEditingChanged: {
					print($0)
				})
				HStack { // 텍스트가 우측에 안붙고 가운데정렬로 있는게 어색해서 Rgb 세줄이 모두 우측에 붙게 하기위해 하나 더 덮어쓴다.
					Spacer()
					Text("\(Int(r))")
				}
				.frame(width: 40)
			}
			.padding()
			.foregroundColor(.red)
			
			HStack {
				Text("G")
				Slider(value: $g, in: 0 ... 255, step: 1, label: {
					EmptyView()
				}, onEditingChanged: {
					print($0)
				})
				HStack {
					Spacer()
					Text("\(Int(g))")
				}
				.frame(width: 40)
			}
			.padding()
			.foregroundColor(.green)
			
			HStack {
				Text("B")
				Slider(value: $b, in: 0 ... 255, step: 1, label: {
					EmptyView()
				}, onEditingChanged: {
					print($0)
				})
				HStack {
					Spacer()
					Text("\(Int(b))")
				}
				.frame(width: 40)
			}
			.padding()
			.foregroundColor(.blue)
		}
	}
}

struct View_Slider_Previews: PreviewProvider {
	static var previews: some View {
		View_Slider()
	}
}
