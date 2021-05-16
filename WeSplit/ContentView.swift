//
//  ContentView.swift
//  WeSplit
//
//  Created by Yew Wai Hon on 16/05/2021.
//

import SwiftUI

struct ContentView: View {
  @State private var tapCount = 0
  
  var body: some View {
    Button("Tap Count: \(tapCount)") {
      self.tapCount += 1
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
