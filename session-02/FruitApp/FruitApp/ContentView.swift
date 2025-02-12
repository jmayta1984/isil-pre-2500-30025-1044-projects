//
//  ContentView.swift
//  FruitApp
//
//  Created by user272495 on 1/22/25.
//

import SwiftUI

struct ContentView: View {
        
    @State var fruit = ""
    var body: some View {
        NavigationStack {
            NavigationLink(destination: {
                FruitsView(selectedFruit: { text in
                    self.fruit = text
                })
            }) {
                Text("Choose")
            }
            Text(fruit)
            
        }
        
    }
}

#Preview {
    ContentView()
}
