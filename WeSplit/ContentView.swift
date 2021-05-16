//
//  ContentView.swift
//  WeSplit
//
//  Created by Yew Wai Hon on 16/05/2021.
//

import SwiftUI

struct ContentView: View {
  let students = ["Harry", "Hermione", "Ron", "Peter", "John"]
  @State private var selectedStudent = 0
  
  var body: some View {
    VStack {
      Picker("Select your student", selection: $selectedStudent) {
        ForEach(0 ..< students.count) {
          Text(self.students[$0])
        }
      }
      Text("You choose: Student # \(students[selectedStudent])")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
