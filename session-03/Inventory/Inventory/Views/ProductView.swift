//
//  ProductView.swift
//  Inventory
//
//  Created by user272495 on 1/29/25.
//

import SwiftUI

struct ProductView: View {
    @State var name: String = ""
    @State var quantity: String = ""
   
    var onAdd: (Product) -> Void
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            TextField("Name", text: $name)
            TextField("Quantity", text: $quantity)
        }
        .navigationTitle("Product")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button(action: {
                    let product = Product(id: UUID(), name: name, quantity: Int(quantity) ?? 0)
                    onAdd(product)
                    dismiss()
                }) {
                    Image(systemName: "square.and.arrow.down")
                }
            }
        }
    }
}

#Preview {
    ProductView { _ in
        
    }
}
