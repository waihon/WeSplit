//
//  ContentView.swift
//  WeSplit
//
//  Created by Yew Wai Hon on 16/05/2021.
//

import SwiftUI

struct ContentView: View {
  @State private var checkAmount = ""
  @State private var numberOfPeople = 2
  @State private var tipPercentage = 2
  let tipPercentages = [10, 15, 20, 25, 0]
  
  var totalPerPerson: Double {
    let peoplecount = Double(numberOfPeople + 2)
    let tipSelection = Double(tipPercentages[tipPercentage])
    let orderAmount = Double(checkAmount) ?? 0
    return 0
  }
  
  var body: some View {
    NavigationView {
      Form {
        Section {
          TextField("Amount", text: $checkAmount)
            .keyboardType(.decimalPad)
          
          Picker("Number of people", selection: $numberOfPeople) {
            ForEach(2 ..< 100) {
              Text("\($0) people")
            }
          }
        }
        
        Section(header: Text("How much tip do you want to leave?")) {
          Picker("Tip percentage", selection: $tipPercentage) {
            ForEach(0 ..< tipPercentages.count) {
              Text("\(tipPercentages[$0])%")
            }
          }
          .pickerStyle(SegmentedPickerStyle())
        }
        
        Section {
          Text("$\(checkAmount)")
        }
      }
      .navigationBarTitle("WeSplit")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
