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

struct Nav_TabView: View {
	@State private var selectedIndex = 0
	
	var body: some View {
		TabView(selection: $selectedIndex) {
			ImageScene(imageName: "star", color: Color.red, selectedIndex: $selectedIndex)
				.tabItem {
					Image(systemName: "star")
					Text("Star \(selectedIndex)")
				}
				.tag(0)
			ImageScene(imageName: "heart", color: Color.green, selectedIndex: $selectedIndex)
				.tabItem {
					Image(systemName: "heart")
					Text("Heart")
				}
				.tag(1)
			ImageScene(imageName: "play", color: Color.blue, selectedIndex: $selectedIndex)
				.tabItem {
					Image(systemName: "play")
					Text("Play")
				}
				.tag(2)
		}
	}
}

struct Nav_TabView_Previews: PreviewProvider {
	static var previews: some View {
		Nav_TabView()
	}
}
