//
//  FruitsView.swift
//  FruitApp
//
//  Created by user272495 on 1/22/25.
//

import SwiftUI


struct FruitsView: View {
    @Environment(\.dismiss) var dismiss
    //@Binding var fruit: String
    let selectedFruit: (String) -> Void
    
    let fruits = ["Apple", "Orange", "Banana"]
    var body: some View {
        HStack {
            ForEach(fruits, id: \.self ) { fruit in
                Button (action: {
                    //self.fruit = fruit
                    selectedFruit(fruit)
                    dismiss()
                }){
                    Text(fruit)

                }
            }
        }
        
    }
}

#Preview {
   // FruitsView(fruit: .constant(""))
    FruitsView { _ in
        
    }
}
