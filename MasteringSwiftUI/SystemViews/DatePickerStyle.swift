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

struct View_DatePickerStyle: View {
	
	@State private var selectedDate = Date()
	
	var body: some View {
		VStack {
			Text("DatePicker Styles")
				.font(.largeTitle)
			
			Spacer()
			
			Text("Date + Time")
				.font(.title)
			
			// #1
			// Binding된 selectDate전달, 컴포넌트들전달, 라벨 전달.
			DatePicker(selection: $selectedDate, displayedComponents: [.date, .hourAndMinute], label: {
				Text("Select Date")
			})
				.labelsHidden() // labels hidden은 라벨내용을 숨긴다. 보통 데이트피커는 어색해서 라벨 없이 간다.
			
			
			Spacer()
			
			Text("Date Only")
				.font(.title)
			
			// #2
			// Binding된 selectDate전달, 컴포넌트들전달, 라벨 전달.
			DatePicker(selection: $selectedDate, displayedComponents: [.date], label: {
				Text("Select Date")
			})
				.labelsHidden() // labels hidden은 라벨내용을 숨긴다. 보통 데이트피커는 어색해서 라벨 없이 간다.
			
			Spacer()
			
			Text("Time Only")
				.font(.title)
			
			// #3
			// Binding된 selectDate전달, 컴포넌트들전달, 라벨 전달.
			DatePicker(selection: $selectedDate, displayedComponents: [.hourAndMinute], label: {
				Text("Select Date")
			})
				.labelsHidden() // labels hidden은 라벨내용을 숨긴다. 보통 데이트피커는 어색해서 라벨 없이 간다.
		}
	}
}

struct View_DatePickerStyle_Previews: PreviewProvider {
	static var previews: some View {
		View_DatePickerStyle()
	}
}
