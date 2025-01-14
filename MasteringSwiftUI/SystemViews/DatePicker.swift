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

struct View_DatePicker: View {
	let dateFormatter: DateFormatter = {
		let f = DateFormatter()
		f.dateStyle = .long
		f.timeStyle = .none
		return f
	}()
	
	@State private var selectedDate = Date() // DatePicker와 바인딩할 예정. 기본값은 현재날짜.
	
	var targetDate: Date {
		selectedDate.addingTimeInterval(100 * 60 * 60 * 24) // 선택한 날짜로부터 100일후의 날짜.
	}
	
	var body: some View {
		VStack {
			Spacer()
			
			Text("\(selectedDate, formatter: dateFormatter) 부터")
				.font(.title)
			
			Text("100일째 되는 날은")
				.font(.title)
			
			Text("\(targetDate, formatter: dateFormatter) 입니다.")
				.font(.title)
			
			Spacer()
			
			// #1
			// in은 선택가능한 날짜의 범위를 노출. 여기서는 오늘보다 이전 날짜가 선택 가능하다.
			DatePicker(selection: $selectedDate, in: ...Date(), displayedComponents: [.date], label: {
				EmptyView()
			})
				.labelsHidden()
		}
	}
}

struct View_DatePicker_Previews: PreviewProvider {
	static var previews: some View {
		View_DatePicker()
			.environment(\.locale, Locale(identifier: "Ko_kr"))
	}
}
