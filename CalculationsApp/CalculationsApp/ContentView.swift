//
//  ContentView.swift
//  CalculationsApp
//
//  Created by COMPL-548-Praveen Kumar on 09/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var value1: String = ""
    
    var body: some View {
        VStack {
            Text("Calculate Value")
                .bold()
            
            TextField("Value1", text: $value1)
                .textFieldStyle(.roundedBorder)
            Button("Action") {
                let _ = print(addTwoValues(x: Int(value1) ?? 0, y: 20))
            }
            
            
        }
        .onAppear {
            let _ = print(addTwoValues(x: Int(value1) ?? 0, y: 20))
        }
        .padding()
    }
    
    func addTwoValues(x: Int, y: Int) -> Int {
        return x+y
    }
}

#Preview {
    ContentView()
}
