//
//  MySwiftUIView.swift
//  TestHostingController
//
//  Created by 김종권 on 2022/10/18.
//

import SwiftUI

struct MySwiftUIView: View {
  var body: some View {
    VStack {
      Text("SwiftUI 뷰")
      Text("Hello, World!")
    }
  }
}

struct MySwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    MySwiftUIView()
  }
}
