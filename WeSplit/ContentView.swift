//
//  ContentView.swift
//  WeSplit
//
//  Created by Yew Wai Hon on 16/05/2021.
//

import SwiftUI

struct ContentView: View {
  @State private var name = ""
  
  var body: some View {
    Form {
      TextField("Enter your name", text: $name)
      Text("Hello, world!")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
