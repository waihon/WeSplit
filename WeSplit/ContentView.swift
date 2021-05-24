//
//  ContentView.swift
//  WeSplit
//
//  Created by Yew Wai Hon on 16/05/2021.
//

import SwiftUI

struct ContentView: View {
  @State private var checkAmount = ""
  @State private var numberOfPeople = "4"
  @State private var tipPercentage = 2
  let tipPercentages = [10, 15, 20, 25, 0]
  
  var peopleCount: Double {
    return Double(numberOfPeople) ?? 0
  }
  
  var totalAmount: Double {
    let tipSelection = Double(tipPercentages[tipPercentage])
    let orderAmount = Double(checkAmount) ?? 0
    
    let tipValue = orderAmount * tipSelection / 100
    return orderAmount + tipValue
  }
  
  var totalPerPerson: Double {
    return totalAmount / peopleCount
  }
  
  var body: some View {
    NavigationView {
      Form {
        Section {
          TextField("Amount", text: $checkAmount)
            .keyboardType(.decimalPad)
          
          TextField("Number of people", text: $numberOfPeople)
            .keyboardType(.numberPad)
        }
        
        Section(header: Text("How much tip do you want to leave?")) {
          Picker("Tip percentage", selection: $tipPercentage) {
            ForEach(0 ..< tipPercentages.count) {
              Text("\(tipPercentages[$0])%")
            }
          }
          .pickerStyle(SegmentedPickerStyle())
        }
        
        Section(header: Text("Total amount")) {
          Text("$\(totalAmount, specifier: "%.2f")")
        }
        
        Section(header: Text("Amount per person")) {
          Text("$\(totalPerPerson, specifier: "%.2f")")
            .foregroundColor(tipPercentage == 4 ? .red : .black)
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
